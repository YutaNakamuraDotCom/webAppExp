<%@ page contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <title>九九表の作成</title>
    </head>
    <body>
        <h1>九九表</h1>
        <table border="1">
            <tr>
                <th>1</th><th>2</th><th>3</th><th>4</th>
                <th>5</th><th>6</th><th>7</th><th>8</th><th>9</th>
            </tr>
            
            <%
            for(int i=1; i<10; i++){
            out.println("<tr>");
            out.println("<tr>" + i + "<tr>");
                for(int j=1; j<10; j++){
                    int result=i*j;
                    if(result<=40){
                    out.println("<td align='right' width='20'>" + (i*j) + "</td>");
                    }
                }
            out.println("</tr>");
        }
            %>
        </table>
    </body>
</html>