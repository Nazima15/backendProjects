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
    <title>BP600 Practice#1 (JSP 기초)</title> <!-- 브라우저 탭에 표시될 제목 -->
    <!-- CSS 파일 연결 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css">
</head>
<body>
    <%-- 1. 헤더 포함 (정적 include) --%>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <hr>

    <%-- 2. 메인 컨텐츠 (동적 include) --%>
    <jsp:include page="${contentPage}" />
    <hr>

    <%-- 3. 푸터 포함 (정적 include) --%>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
