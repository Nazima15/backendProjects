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
    <title>404 에러</title> <!-- 브라우저 탭에 표시될 제목 -->
</head>
<body>
    <!-- 404 이미지 표시 -->
    <img src="${pageContext.request.contextPath}/assets/img/404.png" alt="404 오류">

    <!-- 오류 메시지 -->
    <h1>404 : 파일을 찾을 수 없습니다.</h1>
</body>
</html>
