<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
    JSP 페이지 지시자
    language="java" : JSP에서 사용하는 스크립트 언어를 Java로 지정
    contentType="text/html; charset=UTF-8" : 클라이언트로 전송되는 문서의 타입과 문자 인코딩
    pageEncoding="UTF-8" : JSP 파일 자체의 문자 인코딩
-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>500 에러</title> <!-- 브라우저 탭에 표시될 제목 -->
</head>
<body>
    <!-- 500 이미지 표시 -->
    <img src="${pageContext.request.contextPath}/assets/img/500.png" alt="500 오류">

    <!-- 오류 메시지 -->
    <h1>내부 오류가 발생했습니다. 관리자에게 연락해 주세요.</h1>
</body>
</html>
