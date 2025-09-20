<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
    JSP 페이지 지시자
    language="java" : 페이지에서 사용하는 스크립트 언어를 Java로 지정
    contentType="text/html; charset=UTF-8" : 클라이언트로 전송되는 문서의 타입과 문자 인코딩 설정
    pageEncoding="UTF-8" : JSP 파일 자체의 문자 인코딩 설정
-->

<main id="main-content">
    <!-- 메인 콘텐츠 영역 -->

    <!-- 메인 이미지 -->
    <img src="${pageContext.request.contextPath}/assets/img/main_600.png" 
         alt="메인 이미지">

    <!-- 참고자료 링크 -->
    <h4>참고자료: <a href="https://docs.oracle.com/cd/A97688_10/generic.903/a97681/jspprim.htm" target="_blank">
        https://docs.oracle.com/cd/A97688_10/generic.903/a97681/jspprim.htm
    </a></h4>
</main>
