<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
    JSP 페이지 지시자
    language="java" : JSP에서 사용하는 스크립트 언어를 Java로 지정
    contentType="text/html; charset=UTF-8" : 클라이언트로 전송되는 문서의 타입과 문자 인코딩
    pageEncoding="UTF-8" : JSP 파일 자체의 문자 인코딩
-->

<main>
    <!-- 메인 콘텐츠 영역 -->
    
    <h1>JSP 종합실습 페이지</h1>
    <hr>
    첫번째 메뉴 선택 시 메인을 구성하는 페이지

    <!-- JSP 선언 태그: 클래스 멤버 변수 및 메서드 선언 -->
    <%! 
        String[] members = {"홍길동", "박철수", "이진주", "김상철"}; // 배열 선언
        int num1 = 10; // 정수 변수 선언
        // calc 메서드: num1 + 매개변수 num2를 반환
        int calc(int num2) {
            return num1 + num2;
        }
    %>

    <!-- HTML 주석: 화면에는 안 보이고, 페이지 소스 보기에는 보임 -->
    <h3>1. JSP 주석</h3>
    <!-- HTML 주석 예시 -->
    <!-- 화면에는 보이지 않습니다 -->
    <%-- JSP 주석 예시: 화면과 소스 모두에서 보이지 않음 --%>

    <!-- JSP 표현식: calc(20) 메서드 실행 결과 출력 -->
    <h3>2. calc(20) 메서드 실행 결과: <%= calc(20) %></h3>

    <!-- JSP include 지시자: hello.jsp 파일 포함 -->
    <h3>3. include: hello.jsp</h3>
    <%@ include file="/WEB-INF/views/etc/hello.jsp" %>

    <!-- JSP 스크립트: 배열 데이터를 반복 출력 -->
    <h3>4. 스크립트(배열 데이터 출력)</h3>
    <ul>
        <%
            for (String name : members) { // members 배열 반복
        %>
            <li><%= name %></li> <!-- 배열 요소 출력 -->
        <%
            }
        %>
    </ul>
</main>
