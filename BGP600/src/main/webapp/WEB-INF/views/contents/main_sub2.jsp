<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
    JSP 페이지 지시자
    language="java" : JSP에서 사용하는 스크립트 언어를 Java로 지정
    contentType="text/html; charset=UTF-8" : 클라이언트로 전송되는 문서의 타입과 문자 인코딩
    pageEncoding="UTF-8" : JSP 파일 자체의 문자 인코딩
-->

<%
    // 요청 파라미터 받아오기
    String ns1 = request.getParameter("n1"); // 첫 번째 숫자
    String ns2 = request.getParameter("n2"); // 두 번째 숫자
    String op = request.getParameter("op");  // 연산자

    // null 처리: 입력이 없으면 기본값 0
    if (ns1 == null) ns1 = "0";
    if (ns2 == null) ns2 = "0";

    // 문자열 → 정수 변환
    int n1 = Integer.parseInt(ns1);
    int n2 = Integer.parseInt(ns2);

    // 연산자 기본값 설정
    if (op == null) op = "+";

    // 결과 초기화
    long result = 0;
    
    // 연산 수행
    switch(op) {
        case "+": result = n1 + n2; break;
        case "-": result = n1 - n2; break;
        case "*": result = n1 * n2; break;
        case "/": 
            if (n2 != 0) result = n1 / n2; // 0으로 나누기 방지
            break;
    }
%>

<main>
    <!-- 메인 영역 시작 -->
    <h1>JSP 계산기실습 페이지</h1>
    <hr>

    <!-- 계산기 입력 폼 -->
    <form method="post" action="menu2.do">
        <!-- 첫 번째 숫자 입력 -->
        <input type="text" name="n1" size="10">

        <!-- 연산자 선택 -->
        <select name="op">
            <option>+</option>
            <option>-</option>
            <option>*</option>
            <option>/</option>
        </select>

        <!-- 두 번째 숫자 입력 -->
        <input type="text" name="n2" size="10">

        <!-- 제출 버튼 -->
        <input type="submit" value="계산하기">
    </form>

    <hr>
    
    <!-- 계산 결과 출력 -->
    결과: <%= result %>
</main>
