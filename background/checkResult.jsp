<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
 <link href="../css/css.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>登录结果</title>
</head>

<body>
<p>&nbsp;</p>
<p align="center">	<%
	if(request.getAttribute("result")==null){%>

	<%session.setAttribute("manager",request.getAttribute("manager"));
        session.setMaxInactiveInterval(3600);%>
	<meta http-equiv="refresh" content="0;URL=orderAction.do?action=0">
	<%}else{%>
	      <%
		   String result=(String)request.getAttribute("result");
		  %>
		    <script language='javascript'>alert('<%=result%>');window.location.href='background/managerCheck.jsp';</script>

	<%}%></p>
</body>
</html>
