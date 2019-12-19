<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.ManagerForm"%>
<%
List list=(List)request.getAttribute("list");
ManagerForm manager=(ManagerForm)session.getAttribute("manager");
int sigh=manager.getSigh().intValue();
int number=Integer.parseInt((String)request.getAttribute("number"));
int maxPage=Integer.parseInt((String)request.getAttribute("maxPage"));
int pageNumber=Integer.parseInt((String)request.getAttribute("pageNumber"));
int start=number*7;//开始条数
int over=(number+1)*7;//结束条数
int count=pageNumber-over;//还剩多少条记录
if(count<=0){
  over=pageNumber;
  }
%>
 <script Language="JavaScript">
 function deleteManager(date) {
  if(confirm("确定要删除吗？")){
    window.location="managerAction.do?action=4&id="+date;
	}
  }
 </script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>教材订购系统的后台</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css">
<body>
<table width="755" height="100%"  border="0" align="center" cellpadding="0" cellspacing="0">

  <tr valign="bottom">
    <td height="108" colspan="2"  background="image/banner1.jpg"><div align="center">
 <jsp:include page="../upTwo.jsp"/>
    </div></td>
  </tr>
  <tr>
    <td width="24%" height="318"><jsp:include page="../../leftManager.jsp"/>  </td>
    <td width="76%" bgcolor="#FFFFFF" class="linkBlack">    <div align="center">
	<table width="99%" height="16"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#E6E6E6"><div align="center"><font color="#990000"><b>管理员信息的查询</b></font></div></td>
      </tr>
    </table>
<br><br>

	    <table width="90%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
          <td width="20%" height="20" colspan="4"><div align="right"><a href="managerAction.do?action=7">修改您的密码</a>&nbsp;&nbsp;&nbsp;</div></td>
        <tr>
        </table>
	    <table width="90%"  border="1" cellspacing="0" cellpadding="0">
         
	    <tr>
          <td width="20%" height="25"><div align="center">数据编号</div></td>
          <td width="20%"><div align="center">管理员账号</div></td>
          <td width="20%"><div align="center">管理员姓名</div></td>

       	<%if(sigh==1){%>    <td width="44%"><div align="center">操作</div></td><%}else{}%>
        </tr>
        <%for(int i=start;i<over;i++){
      ManagerForm form=(ManagerForm)list.get(i);
          %>
        <tr>
          <td height="30"><div align="center"><%=form.getId()%></div></td>
          <td><div align="center"><%=form.getAccount()%></div></td>
          <td><div align="center"><%=form.getName()%></div></td>
          	<%if(sigh==1){%>  <td><div align="center">

		 <a href="managerAction.do?action=5&account=<%=form.getAccount()%>">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<%if(form.getSigh().intValue()==0){%>
		 <a href="javascript:deleteManager('<%=form.getId()%>')">删除</a>
		  	<%}else{%>删除<%}%>
		  </div></td><%}else{}%>
        </tr>
        <%}%>
      </table><br>
	   <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
   <tr align="center">
    <td width="13%">共为<%=maxPage%>页</td>
			<td width="16%">共有<%=pageNumber%>条记录</td>
            <td width="14%">当前为第<%=number+1%>页</td>
    <td width="19%"><%if((number+1)==1){%> 上一页<%}else{%><a href="managerAction.do?action=1&i=<%=number-1%>">上一页</a></td><%}%>
            <td width="18%"><%if(maxPage<=(number+1)){%>下一页<%}else{%><a href="managerAction.do?action=1&i=<%=number+1%>">下一页</a></td><%}%>
     <%if(sigh==1){%>
			<td width="20%">	<div align="right"><a href="managerAction.do?action=2">添加管理员</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
	</td><%}else{%><%}%>

   </tr>
 </table>

    </div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="60" colspan="2"><p align="center"><jsp:include page="../downNews.jsp"/>

</p>    </td>
  </tr>
</table>
</body>
</html>
