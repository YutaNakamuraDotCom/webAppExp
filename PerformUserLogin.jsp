<%@ page contentType="text/html; charset=utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("user");
    String password=request.getParameter("passwd");
%>
<html>
    <head>
        <title>ようこそ</title>
    </head>
    <body>
        <p>
            ようこそ
        </p>
        <ul>
            <li>氏名:<%=name%></li>
            <li>パスワード:<%=password%></li>
        </ul>
    </body>
</html>