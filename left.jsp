<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.AfficheForm"%>
<%@page import="com.domain.MemberForm"%>
<%@page import="com.domain.GoodsForm"%>
<jsp:useBean id="affiche" scope="page" class="com.dao.AfficheDao"/>
<jsp:useBean id="goods" scope="page" class="com.dao.GoodsDao"/>


<link rel="stylesheet" href="css/css.css">
<%java.util.Date date=new java.util.Date();%>
<%List afficheList=(List)affiche.selectAffiche();%>


<script language="javascript">

function land(){                  //登录的脚本
if(document.form.name.value==""){
window.alert("请输入账号");
return false;
}
if(document.form.password.value==""){
window.alert("请输入密码");
return false;
}

return true;
}
function quit() {
  if(confirm("欢迎下次光临！！！")){
    window.location.href="loginOut.jsp";
	}
  }

</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<table width="193" height="635"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="193" height="252" valign="middle" background="image/denglu.jpg">
			<%if(session.getAttribute("id")==null||session.getAttribute("form")==null){%>
			
			<form name="form" method="post" action="memberAction.do?action=1" onSubmit="return land()">
			<table width="80%" height="90"  border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="39%" height="20"><div align="right">用户名：</div></td>
                <td width="61%"><input name="name" type="text" size="13"></td>
              </tr>
              <tr>
                <td height="20"><div align="right">密&nbsp;&nbsp;码：</div></td>
                <td><input name="password" type="password" size="13"></td>
              </tr>
              <tr align="center">
                <td height="27">&nbsp;</td>
                <td><input type="submit" name="Submit3"  value="登录"></td>
              </tr>
  <tr align="center">
              <td height="23"><div align="right">
                <table width="82%" height="77%"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td bgcolor="#FFFFFF" class="linkBlack"><div align="center"><a href="member/memberRegister.jsp">注 &nbsp; 册</a></div></td>
                  </tr>
                </table>
                </div></td> 
                <td><table width="82%" height="77%"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td bgcolor="#FFFFFF" class="linkBlack"><div align="center"> <a href="member/findOne.jsp">找回密码 </a></div></td>
                  </tr>
                </table></td>
  </tr>
</table></form>
			
				<%}else{%>
				          <%MemberForm form=(MemberForm)session.getAttribute("form");%>
			<div align="center">欢迎<%=form.getName()%>
		      </div><br>
			    <table width="93%" height="90"  border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
                  <tr>
                    <td align="center"> 今天是<%=date.getYear()+1900%>年<%=date.getMonth()+1%>月<%=date.getDate()%>日</td>
                  </tr>
				 
                  <tr>
                    <td align="center">会员姓名：<%=form.getReallyName()%></td>
                  </tr>
				  
                  <tr>
                    <td align="center" class="linkBlack" > <a href="javascript:quit()">安全退出</a></td>
                  </tr>
              </table>

				
			
			<%}%>
            <p>&nbsp;</p></td>
          </tr>
          <tr>
            <td height="142" align="center" valign="top"><table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="43" background="image/shangchenggenggao.jpg">&nbsp;</td>
              </tr>
              <tr>
                <td height="111">
				  <table width="84%" height="209"  border="0" align="center" cellpadding="0" cellspacing="0"  >
                <tr>
                  <td height="166" valign="middle" >
                    
					<MARQUEE direction="up" height="180" onmouseout="this.start()" 
             onmouseover="this.stop()" scrollAmount="1" scrollDelay="1" class="linkBlack">	  
		            <%
                      for(int i=0;i<afficheList.size();i++){
                        AfficheForm afficheForm=(AfficheForm)afficheList.get(i);
                        %>
						<div align="center"><a href="#" onClick="window.open('afficheSelect.jsp?id=<%=afficheForm.getId()%>','','width=400,height=300');"><%=afficheForm.getName()%></a></div><br><br>
						<%}%>
                                            </marquee>                  </td>
                </tr>
            </table>

				
				
				</td>
              </tr>
            </table>			
			
			
			
			</td>
          </tr>
          <tr>
            <td height="236" valign="top"><table width="100%" height="235"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="43" background="image/shangpinxiaoshoupaihang.jpg">&nbsp;</td>
              </tr>
              <tr>
                <td height="192">
				  <table width="84%" height="153"  border="0" align="center" cellpadding="0" cellspacing="0">
          <ul>   <%
             List goodsList =goods.selectGoodsNumber();
             int number=goodsList.size();
           if(number>6){
             number=5;
           }
             for(int account=0;account<number;account++){
             GoodsForm form=(GoodsForm)goodsList.get(account);
             %>
                <tr align="center" >
                  <%if(form.getNumber().equals(new Integer(0))){%>
                  <td width="39%" >没有教材排名</td>
                  <%}else{%>
                 
                  <td width="12%" class="linkBlack">&nbsp;
</td>
                  <td width="44%" class="linkBlack">                <li type="square">
                   <div  align="left"><a href="sell_result.jsp?id=<%=form.getId()%>&account=<%=account+1%>"><%=form.getName()%></a> </div></td>
                  <%}%>
               <td width="5%"></li>  </tr>
             <%}%></ul>
            </table>

				
				
				
				
				</td>
              </tr>
            </table></td>
          </tr>
</table>

