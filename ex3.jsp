<%@ page contentType="text/html; charset=utf-8" import="java.util.*"%>
<%
    request.setCharacterEncoding("utf-8");
    String value=request.getParameter("food");
    String strMsg;
    String ramen="ramen";
    String curry="curry";
    if(Objects.equals(value, ramen)){
        strMsg="ほとんどの子供が好きです";
    }else if(Objects.equals(value, curry)){
        strMsg="僕も大好きです";
    }else{
        strMsg="臭くて食べられない";
    };  
%>
<html>
    <head>
        <title>アンケート結果</title>
    </head>
    <body>
        <h1>アンケート結果</h1>
        <p><%=strMsg%></p>
    </body>
</html>