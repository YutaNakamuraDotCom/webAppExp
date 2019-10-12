<%@ page contentType="text/html;charset=utf-8"%>
<%!
int i;
int intNum;
String[] strVal={"山田","田中","山本","鈴木","ナカムラ"};
%>
<html>
    <head>
        <title>皆に挨拶</title>
    </head>
    <body>
        <h1>みんなに挨拶</h1>
        <%
        intNum=strVal.length;
        for(i=0; i<intNum; i++){
            out.println("<p>こんにちは、"+strVal[i]+"さん！</p>");
        }
        %>
    </body>
</html>