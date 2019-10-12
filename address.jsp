<%@ page contentType="text/html; charset=utf-8" import="java.util.*"%>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>アドレス帳検索(検索結果)</title>
    </head>
    <body>
        <h1 style="background: #CCCCCC">アドレス帳検索</h1>
        <%
        HashMap hm=new HashMap();
        hm.put("山田貴子","女子,090-xxx9-6389,横浜市ｄぁｓｍ");
        hm.put("木村一郎","女子,080-xxx9-6389,lhlkjjkl");
        hm.put("鈴木恵子","女子,070-xxx9-6389,vtdfc");
        hm.put("田中康夫","女子,060-xxx9-6389,qwertyu");
        String strName=request.getParameter("name");
        if(hm.containsKey(strName)){
            String strResult=(String)hm.get(strName);
            StringTokenizer tkn=new StringTokenizer(strResult,",";)
        }
        %>
        <dl><dt style="font-size:14pt; font-weight:bold"><%=strName %></dt>
            <dd>
                <ol>
                    <li><%=tkn.nextToken() %></li>
                    <li><%=tkn.nextToken() %></li>
                    <li><%=tkn.nextToken() %></li>
                </ol>
            </dd>
        </dl>
        <% }else{ %>
        <div style="color:Red">指定された名前は見つかりませんでした</div>
        <%}%>
    </body>
</html>