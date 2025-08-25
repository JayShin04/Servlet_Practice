package com.jayslog.database.ex;

import com.jayslog.common.MySQLService;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/db/user/create")
public class UserCreateController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        // 이름, 생년월일(yyyymmdd), 이메일, 자기소개
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        String introduce = request.getParameter("introduce");

        // 전달 받은 사용자 정보를 기반으로 사용자 추가
        MySQLService mySQLService = new MySQLService();

        mySQLService.connect();

        String query = "INSERT INTO `new_user`" +
                "(`name`, `yyyymmdd`, `email`, `introduce`)" +
                "VALUE" +
                "('" + name + "', '" + birthday + "', '" + email + "', '" + introduce + "');";

        int count = mySQLService.update(query);
//        out.println("저장결과 : " + count);

        // 클라이언트야 내가 너한테 줄 데이터는 없고, list.jsp에 다시 요청해서 조회결과를 응답으로 보도록 해
        // list.jsp에 새로운 요청을 하세요
        // redirect : response에 새롭게 요청할 url을 전달
        response.sendRedirect("/jsp/db/user/list.jsp");
    }
}
