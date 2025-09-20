<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
    JSP 페이지 지시자
    language="java" : 페이지에서 사용하는 스크립트 언어를 Java로 지정
    contentType="text/html; charset=UTF-8" : 클라이언트로 전송되는 문서의 타입과 문자 인코딩 설정
    pageEncoding="UTF-8" : JSP 파일 자체의 문자 인코딩 설정
-->

<header>
    <!-- 헤더 영역 시작 -->

    <!-- 로고 이미지 -->
    <div>
        <a href="home.do">
            <img src="${pageContext.request.contextPath}/assets/img/yger_com_logo.png" 
                 alt="영진로고이미지">
        </a>
    </div>

    <!-- 빛나는 텍스트 제목 -->
    <h1 class="shine-text">백엔드프로그래밍#600</h1>

    <!-- 내비게이션 메뉴 -->
    <nav>
        <ul>
            <li><a href="menu1.do">JSP 종합실습</a></li>
            <li><a href="menu2.do">계산기 실습</a></li>
            <li><a href="#">추가메뉴1</a></li>
            <li><a href="#">추가메뉴2</a></li>
        </ul>
    </nav>

    <!-- 로그인 폼 -->
    <div>
        <form class="login-form">
            <!-- 아이디 입력 -->
            <input class="login-input" type="text" placeholder="아이디">
            <!-- 비밀번호 입력 -->
            <input class="login-input" type="password" placeholder="비밀번호">
            <!-- 로그인 버튼 -->
            <button class="login-btn" type="submit">로그인</button>
            <!-- 회원가입 버튼 -->
            <button type="button">회원가입</button>
        </form>
    </div>

</header>
<!-- 헤더 영역 끝 -->
