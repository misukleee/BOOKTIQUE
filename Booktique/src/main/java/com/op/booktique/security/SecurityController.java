package com.op.booktique.security;

import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.op.booktique.mapper.MemberMapper;
import com.op.booktique.service.EmailService;
import com.op.booktique.service.MailServiceInter;
import com.op.booktique.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

/**
 * 로그인 및 로그아웃 처리, 접근 거부 처리, 사용자 ID 및 비밀번호 찾기 기능 등을 담당하는 컨트롤러
 */
@Slf4j
@Controller
public class SecurityController {
	
    // DI / IoC
    // passwordEncoder 객체는 security-context.xml의 bean에 등록되어 있음
    @Autowired
    PasswordEncoder passwordEncoder;	//비밀번호를 암호화하거나 검증할 때 사용하는 객체. Spring Security에서 제공하는 인코더.
    
    @Autowired
    MemberMapper memberMapper;
    
    @Autowired
    EmailService emailService;
    
    @Autowired
    MailServiceInter registerMail;
    
    /**
     * 접근 거부 처리
     * 요청URI : /accessError
     * 요청방식 : GET
     *
     * @param auth Authentication 객체
     * @param model Model 객체
     * @return 접근 거부 페이지로 이동
     */
    @GetMapping("/accessError")
    public String accessError(Authentication auth, Model model) {
        log.info("accessError->auth : " + auth); // 접근 거부 로그 출력
        model.addAttribute("msg", "Access Denied"); // 모델에 접근 거부 메시지 추가
        
        return "security/accessError"; // 접근 거부 페이지로 이동
    }
    
    /**
     * 로그인 페이지 처리
     * 요청URL : /login, /login?error=error, /login?logout=logout
     * 요청방식 : GET
     *
     * @param error 로그인 에러 메시지
     * @param logout 로그아웃 메시지
     * @param model Model 객체
     * @param authentication Authentication 객체
     * @return 로그인 페이지로 이동
     */
    @GetMapping("/login")
    public String login(String error, String logout, Model model, Authentication authentication) {
        
    	// 로그인 시 에러가 발생했을 때 에러 메시지를 모델에 추가
        if (error != null) {
            model.addAttribute("error", "아이디 또는 비밀번호가 올바르지 않습니다.");
            log.info("로그인 에러: " + error);
        }
        
        // 로그아웃했을 때 로그아웃 메시지를 모델에 추가
        if (logout != null) {
            model.addAttribute("logout", "성공적으로 로그아웃되었습니다.");
            log.info("로그아웃 메시지: " + logout);
        }
        
        // 이미 인증된 사용자일 경우 사용자 정보를 가져와 모델에 추가
        // 즉, 사용자가 이미 로그인된 상태에서 다시 로그인 페이지에 접근했을 때의 처리
        if (authentication != null && authentication.isAuthenticated()) { // 이미 인증된 사용자일 경우
            User user = (User) authentication.getPrincipal(); // 인증된 사용자 정보 가져오기
            String username = user.getUsername(); // 사용자 이름 가져오기
            MemberVO member = memberMapper.getMemberById(username); // 사용자 정보 조회
            
            // 사용자의 정보가 존재하는지 확인 (null이 아닌지 확인)
            if (member != null) {
                String encodedPwd = member.getMemPw(); // 인코딩된 비밀번호 가져오기
                log.info("encodedPwd : " + encodedPwd); // 비밀번호 로그 출력
                model.addAttribute("encodedPwd", encodedPwd); // 모델에 비밀번호 추가
            } else {
                log.info("사용자 정보가 존재하지 않습니다."); // 사용자 정보가 없음을 로그에 출력
            }
        }
        
        return "loginForm"; // 로그인 폼 페이지로 이동
    }
    
    /**
     * 사용자 ID 찾기 페이지
     * 요청URL : /searchId
     * 요청방식 : GET
     *
     * @param memberVO MemberVO 객체
     * @param model Model 객체
     * @return ID 찾기 페이지로 이동
     */
    @GetMapping("/searchId")
    public String searchId(MemberVO memberVO, Model model) {
        log.info("searchId -> {}", memberVO); // ID 찾기 요청 로그 출력
        
        return "searchId"; // ID 찾기 페이지로 이동
    }
    
    /**
     * 사용자 ID 찾기 처리
     * 요청URL : /searchId
     * 요청방식 : POST
     *
     * @param memNm 회원 이름
     * @param memBirthStr 회원 생년월일
     * @param memPhone 회원 전화번호
     * @param model Model 객체
     * @return ID 찾기 결과 페이지로 이동
     */
    @PostMapping("/searchId")
    public String searchIdPost(@RequestParam("memNm") String memNm, 
                               @RequestParam("memBirth") String memBirthStr, 
                               @RequestParam("memPhone") String memPhone, 
                               Model model) {
        try {
            // String을 java.sql.Date로 변환
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 생년월일 문자열을 날짜 형식으로 변환하기 위해 포맷터를 생성
            java.util.Date utilDate = sdf.parse(memBirthStr); // 생년월일 문자열을 java.util.Date로 변환
            java.sql.Date memBirth = new java.sql.Date(utilDate.getTime()); // java.util.Date를 java.sql.Date로 변환하여 memBirth에 저장

            List<MemberVO> memberVOList = memberMapper.findMemberByNameBirthdateAndPhone(memNm, memBirth, memPhone); // 사용자 정보 조회
            
            // 사용자가 존재할 경우
            if (memberVOList != null && !memberVOList.isEmpty()) {
                model.addAttribute("memberVO", memberVOList.get(0)); // 모델에 사용자 정보 추가
            } else { // 존재하지 않을 경우
                model.addAttribute("message", "해당 정보와 일치하는 사용자를 찾을 수 없습니다"); // 모델에 에러 메시지 추가
            }
        } catch (ParseException e) { // 날짜 파싱 오류가 발생할 경우
            log.error("Error parsing date", e); // 날짜 파싱 오류 로그 출력
            model.addAttribute("message", "Invalid date format."); // 모델에 에러 메시지 추가
        } catch (Exception e) {	// 기타 예외가 발생할 경우
            log.error("Error finding employee by name, birthdate, and phone", e); // 사용자 조회 오류 로그 출력
            model.addAttribute("message", "Error occurred while searching for ID."); // 모델에 에러 메시지 추가
        }
        
        return "searchId"; // ID 찾기 페이지로 이동
    }

    /**
     * 비밀번호 찾기 페이지
     * 요청URL : /searchPw
     * 요청방식 : GET
     *
     * @return 비밀번호 찾기 페이지로 이동
     */
    @GetMapping("/searchPw")
    public String searchPw() {
        return "searchPw"; // 비밀번호 찾기 페이지로 이동
    }
  
    /**
     * 비밀번호 찾기 처리
     * 요청URL : /searchPw
     * 요청방식 : POST
     *
     * @param memId 회원 아이디
     * @param memEmail 회원 이메일
     * @param model Model 객체
     * @return 비밀번호 찾기 결과 페이지로 이동
     */
    @PostMapping("/searchPw")
    public String searchPwPost(@RequestParam("empId") String memId,
                               @RequestParam("empEml") String memEmail,
                               Model model) {
        log.info("searchPwPost->empId : " + memId + "searchPwPost->empEml : " + memEmail); // 비밀번호 찾기 요청 로그 출력
        
        try {
            MemberVO member = memberMapper.findMemberByIdAndEmail(memId, memEmail); // 사용자 정보 조회
            
            // 사용자가 존재할 경우
            if (member != null) {
                String code = registerMail.sendSimpleMessage(memEmail); // 인증 코드 이메일 전송
                System.out.println("사용자에게 발송한 인증코드 ==> " + code); // 인증 코드 로그 출력
                
                // DB의 비밀번호 변경 시행
                member.setMemPw(passwordEncoder.encode(code)); // 비밀번호 인코딩 후 설정                
                memberMapper.updateMember(member); // 비밀번호 업데이트
                
                log.info("searchPwPost->member : " + member); // 비밀번호 변경된 사용자 로그 출력
                
                model.addAttribute("message", "새 비밀번호가 이메일로 전송되었습니다"); // 모델에 성공 메시지 추가
            } else { // 사용자가 존재하지 않을 경우
                model.addAttribute("message", "해당 정보와 일치하는 사용자를 찾을 수 없습니다"); // 모델에 에러 메시지 추가
            }
        } catch (Exception e) { // 예외가 발생할 경우
            log.error("Error resetting password", e); // 비밀번호 재설정 오류 로그 출력
            model.addAttribute("message", "비밀번호 재설정 중 오류가 발생했습니다"); // 모델에 에러 메시지 추가
        }
        
        return "searchPw"; // 비밀번호 찾기 페이지로 이동
    }

    /**
     * 랜덤 비밀번호 생성 로직
     *
     * @return 생성된 랜덤 비밀번호
     */
    private String generateRandomPassword() {
        SecureRandom random = new SecureRandom(); // 랜덤 생성기 초기화
        byte[] bytes = new byte[16]; // 16바이트 배열 생성
        random.nextBytes(bytes); // 랜덤 바이트 배열 생성
        String password = Base64.getUrlEncoder().withoutPadding().encodeToString(bytes); // 랜덤 바이트 배열을 Base64로 인코딩하여 문자열로 변환
        
        return password.substring(0, 12); // 앞 12자리 문자열 반환
    }
}
