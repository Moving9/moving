<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.LinkForm" %>
<jsp:useBean id="dao" scope="page" class="com.dao.LinkDao"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%List list=dao.selectLink();%>
<link href="css/css.css" rel="stylesheet" type="text/css">


<table width="757" height="106"  border="0" cellpadding="0" cellspacing="0"  background="image/banner.jpg">
        <tr>
          <td width="82%" height="106">&nbsp;</td>
          <td width="18%"><div align="center">&nbsp;
              <table width="61%" height="24"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="24" style="color:#FFFFFF "><ul>
				  <%
              for(int i=0;i<list.size();i++){
              LinkForm form=(LinkForm)list.get(i);
                %>
				  <li>
                    <div align="right" class="linkWhite"><a href="../<%=form.getLinkAddress()%>"><%=form.getLinkName()%></a></div>
                  </li>
				  <%}%>
                  </ul></td>
                </tr>
              </table>
</div></td>
        </tr>
</table>
