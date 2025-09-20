<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
    JSP 페이지 지시자
    language="java" : JSP에서 사용하는 스크립트 언어를 Java로 지정
    contentType="text/html; charset=UTF-8" : 클라이언트로 전송되는 문서의 타입과 문자 인코딩
    pageEncoding="UTF-8" : JSP 파일 자체의 문자 인코딩
-->

<!--
    jsp:forward 태그
    현재 요청을 다른 JSP 페이지나 URL로 **서버 내부에서 전환**
    브라우저 주소창은 변경되지 않음
-->
<jsp:forward page="home.do" />
