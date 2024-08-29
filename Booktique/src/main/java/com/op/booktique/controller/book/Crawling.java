package com.op.booktique.controller.book;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.op.booktique.vo.book.BookVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Crawling {
    private WebDriver driver;
    private WebElement element;
    private String url;

    // 1. 드라이버 설치 경로
    public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static String WEB_DRIVER_PATH = "C:/Users/PC-20/chromedriver-win64/chromedriver.exe"; // 크롬드라이버 위치

    public Crawling() {
        log.debug("크롤링 생성자 실행");
        // WebDriver 경로 설정
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);

        // 2. WebDriver 옵션 설정
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--start-maximized");
        options.addArguments("--disable-popup-blocking");

        driver = new ChromeDriver(options);
    }

    public void activateBot(int startPage, int endPage, String sortType, String searchType) {
        log.debug("크롤링 activateBot 실행");

        List<BookVO> bookList = new ArrayList<>();

        try {
            for (int pageIndex = startPage; pageIndex <= endPage; pageIndex++) {
                url = String.format("https://product.kyobobook.co.kr/category/KOR/0101#?page=%d&type=%s&sort=%s", pageIndex, searchType, sortType);
                driver.get(url);
                Thread.sleep(3000); // 3. 페이지 로딩 대기 시간

                JavascriptExecutor js = (JavascriptExecutor) driver;
                Thread.sleep(1000);

                // 도서 목록을 담고 있는 요소 선택
                List<WebElement> books = driver.findElements(By.cssSelector("li.prod_item"));

                for (WebElement bookElement : books) {
                    BookVO bookVO = new BookVO();
                    
                    // 도서번호 추출
                    bookVO.setBookId(bookElement.getAttribute("data-id"));
                    
                    // 카테고리 코드 설정
                    bookVO.setCategoryId(0101); // 예시로 사용

                    // 도서명 추출
                    String fullText = bookElement.findElement(By.cssSelector(".prod_area .prod_info_box span.prod_name")).getText();
                    // span 태그가 있는지 확인
                    if (bookElement.findElements(By.cssSelector(".prod_area .prod_info_box span.prod_label")).size() > 0) {
                        // prod_label 이후의 텍스트만 추출
                        String bookTitle = fullText.replace(bookElement.findElement(By.cssSelector(".prod_area .prod_info_box span.prod_label")).getText(), " ").trim();
                        bookVO.setBookTitle(bookTitle);
                    } else {
                        // prod_label이 없는 경우 전체 텍스트를 제목으로 설정
                        bookVO.setBookTitle(fullText.trim());
                    }
                    
                    // ISBN 추출
                    bookVO.setIsbn(bookElement.findElement(By.cssSelector(".prod_btn_wrap [data-kbbfn-bid]")).getAttribute("data-kbbfn-bid"));
                    
                    // 정가 추출
                    bookVO.setBookPrice(Integer.parseInt(bookElement.findElement(By.cssSelector(".prod_area .prod_info_box .prod_price .price_normal .val")).getText().replaceAll("[^0-9]", "")));
                    
                    // 할인율 추출
                    bookVO.setDiscountRate(Integer.parseInt(bookElement.findElement(By.cssSelector(".prod_price .percent")).getText().replaceAll("[^0-9]", "")));
                    
                    // 저자와 출판사 추출
                    String authorPublisherText = bookElement.findElement(By.cssSelector(".prod_area .prod_info_box .prod_author")).getText();
                    String[] authorPublisherArray = authorPublisherText.split(" · ");
                    if (authorPublisherArray.length >= 2) {
                        bookVO.setAuthor(authorPublisherArray[0].trim());
                        bookVO.setPublisher(authorPublisherArray[1].trim());
                    } else if (authorPublisherArray.length == 1) {
                        bookVO.setAuthor(authorPublisherArray[0].trim());
                        bookVO.setPublisher("Unknown Publisher");
                    } else {
                        bookVO.setAuthor("Unknown Author");
                        bookVO.setPublisher("Unknown Publisher");
                    }

                    // 출간일 추출
                    String bookDateText = bookElement.findElement(By.cssSelector(".prod_area .prod_info_box span.date")).getText().trim();
                    // " · "를 제거하고 날짜만 추출
                    bookDateText = bookDateText.replace("·", "").trim();
                    // 날짜 형식을 지정해 파싱
                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd");
                    try {
                        Date bookDate = dateFormat.parse(bookDateText);
                        bookVO.setBookDate(bookDate);
                        bookVO.setBookDateFormatted(bookDateText);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                    
                    // 상세설명 추출
                    String bookExplan = bookElement.findElement(By.cssSelector(".prod_area .prod_info_box .prod_introduction")).getText().replace("\n", " ").replace("\r", " ").trim();
                    bookVO.setBookExplan(bookExplan);
                    
                    // 메인이미지 추출
                    bookVO.setBookImg(bookElement.findElement(By.cssSelector(".prod_area .prod_thumb_box .img_box img")).getAttribute("src"));

                    // 중복 체크 후 리스트에 추가
                    if (bookList.contains(bookVO)) {
                        log.debug("중복! {}", bookVO);
                    } else {
                        log.debug("안중복! {}", bookVO);
                        bookList.add(bookVO);
                    }
                }

                // 스크롤을 내려 추가 로드가 필요한 경우 처리
                WebElement pageElement = driver.findElement(By.tagName("body"));
                pageElement.sendKeys(Keys.END);
                Thread.sleep(3000); // 페이지 로딩 대기
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            driver.quit(); // 5. 브라우저 종료
        }

        // 결과를 CSV 파일로 저장
        String fileName = "output_books.csv";
        try (BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileName), "UTF-8"))) {
        	writer.write('\uFEFF'); // BOM 추가
        	for (int i = 0; i < bookList.size(); i++) {
        		writer.write(bookList.get(i).getBookId() + ";");                 // 도서번호
                writer.write(bookList.get(i).getCategoryId() + ";");             // 카테고리번호
                writer.write(bookList.get(i).getBookTitle() + ";");              // 도서명
                writer.write(bookList.get(i).getIsbn() + ";");                   // ISBN
                writer.write(bookList.get(i).getBookPrice() + ";");              // 정가
                writer.write(bookList.get(i).getDiscountRate() + ";");           // 할인율
                writer.write(bookList.get(i).getAuthor() + ";");                 // 저자
                writer.write(bookList.get(i).getPublisher() + ";");              // 출판사
                writer.write(bookList.get(i).getBookSize() + ";");               // 책 사이즈
                writer.write(bookList.get(i).getBookPage() + ";");               // 쪽수
                writer.write(bookList.get(i).getBookDate() + ";");      	     // 출간일
                writer.write(bookList.get(i).getBookExplan() + ";");             // 상세설명
                writer.write(bookList.get(i).getBookImg() + ";");                // 메인이미지
                writer.write(bookList.get(i).getBookSub() + ";");                // 상세이미지
                writer.newLine();
            }
            String currentDir = System.getProperty("user.dir");
            log.info("파일 저장 디렉토리: " + currentDir);
            log.info("파일에 데이터를 성공적으로 저장했습니다.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Crawling bot = new Crawling();
        bot.activateBot(1, 1, "new", "all"); // 시작 페이지, 끝 페이지, 정렬 타입, 검색 타입
    }
}
