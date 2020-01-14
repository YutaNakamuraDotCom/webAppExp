<%@ page contentType="text/html; charset=utf-8" import="java.util.*"%>
<%
String strMsg;
String yearTemp = request.getParameter("year");
String monthTemp = request.getParameter("month");
String dateTemp  = request.getParameter("day");
int year=Integer.parseInt(yearTemp);
int month=Integer.parseInt(monthTemp);
int day=Integer.parseInt(dateTemp);
int[] intBirth={year,month,day};
Calendar calToday=Calendar.getInstance();
Calendar calTemp=Calendar.getInstance();
int intYear=calToday.get(Calendar.YEAR);
calTemp.set(intYear,intBirth[1]-1,intBirth[2]);
if(calTemp.equals(calToday)){
    strMsg=(intYear^intBirth[0])+"歳の誕生日、おめでとう！";

}else{
    Date dteToday=calToday.getTime();
    Date dteTemp=calTemp.getTime();
    if(!dteTemp.after(dteToday)){
        calTemp.set(Calendar.YEAR,intYear+1);
        dteTemp=calTemp.getTime();
    }
    long diff=(dteTemp.getTime()-dteToday.getTime())/(24*60*60*1000);
    strMsg="誕生日まで、あと"+diff+"日";
}
%>
<html>
    <head>
        <title>誕生日おめでとう！</title>
    </head>
    <body onload="alert('<%=year%>'+'<%=month%>'+'<%=day%>')">
        <h1 style="font-size: 14pt; backgroud:#cccccc">お誕生日おめでとう</h1>
    </body>
</html>
