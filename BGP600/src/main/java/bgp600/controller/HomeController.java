package bgp600.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")   // 확장자가 .do인 모든 요청을 처리
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public HomeController() {
        super();
    }

    // GET 요청 처리
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }

    // POST 요청 처리
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }

    // 공통 처리 메서드
    protected void doProcess(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 요청 URL에서 경로 추출
        String uri = request.getRequestURI();
        String contextPath = request.getContextPath();
        String command = uri.substring(contextPath.length());

        // 기본 페이지 설정
        String viewPage = "/WEB-INF/views/main/home.jsp";
        String contentPage = "/WEB-INF/views/contents/home_main.jsp";

        // 명령어(command)에 따라 분기 처리
        switch (command) {
            case "/home.do":
                contentPage = "/WEB-INF/views/contents/home_main.jsp";
                break;

            case "/menu1.do":
                contentPage = "/WEB-INF/views/contents/main_sub1.jsp";
                break;

            case "/menu2.do":
                contentPage = "/WEB-INF/views/contents/main_sub2.jsp";
                break;

            default:
                // 없는 요청은 404 페이지로 처리
                contentPage = "/WEB-INF/views/errors/404.jsp";
                break;
        }

        // contentPage 정보를 request 객체에 저장
        request.setAttribute("contentPage", contentPage);

        // home.jsp로 포워딩
        request.getRequestDispatcher(viewPage).forward(request, response);
    }
}
