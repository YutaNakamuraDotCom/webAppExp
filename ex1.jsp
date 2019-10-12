<%@ page contentType="text/html;charset=utf-8"%>
<html>
    <head>
        <title>JSPの基礎</title>
    </head>
    <body>
        <ul>
            <%for(int i=0; i<5; i++){%>
                <li>
                    <%out.print("<p>初歩的なJSP</p>");%>
                </li>
                <%}
            %>
        </ul>
    </body>
</html>