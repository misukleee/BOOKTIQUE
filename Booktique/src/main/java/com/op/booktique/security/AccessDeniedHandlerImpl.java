package com.op.booktique.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.slf4j.Slf4j;

// 사용자가 접근 권한이 없는 페이지에 접근할 때, 접근 거부 처리를 담당하는 핸들러. 사용자를 특정 페이지로 리다이렉트.

@Slf4j
public class AccessDeniedHandlerImpl implements AccessDeniedHandler {
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		log.info("CustomAccessDeniedHandler->handle {}", accessDeniedException.getMessage());

		//redirect : 새로운 URI를 요청
		response.sendRedirect("/login");
	}
}
