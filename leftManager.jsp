<%@ page contentType="text/html; charset=gb2312" %>
 <link href="css/css.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <script Language="JavaScript">
 function quit() {
  if(confirm("确定要退出后台吗？")){
    window.location.href="loginOut.jsp";
	}
  }
 </script>
<table width="100%" height="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="45" colspan="2" background="image/zuocedaohang1.jpg">       </td>
      </tr>
      <tr>
        <td width="14%" height="48"   background="image/zuocedaohang2.jpg">&nbsp;</td>
        <td width="86%"   background="image/zuocedaohang2.jpg" class="linkBlack"><p align="center"><a href="goodsAction.do?action=0">教材设置<br>
        Book Manager </a></p></td>
      </tr>
      <tr>
        <td height="40" background="image/zuocedaohang2.jpg">&nbsp;</td>
        <td height="40" background="image/zuocedaohang2.jpg" class="linkBlack"><p align="center"><a href="memberAction.do?action=2">会员设置<br>
        Member Manager</a></p></td>
      </tr>
      <tr>
        <td height="40" background="image/zuocedaohang4.jpg">&nbsp;</td>
        <td height="40" background="image/zuocedaohang4.jpg" class="linkBlack"><p align="center"><a href="managerAction.do?action=1">后台管理员设置<br>
        Administrator Manager </a></p></td>
      </tr>
      <tr>
        <td height="34" background="image/zuocedaohang5.jpg">&nbsp;</td>
        <td height="40" background="image/zuocedaohang5.jpg" class="linkBlack"><p align="center"><a href="orderAction.do?action=0">订单设置<br>
        Order Manager</a></p></td>
      </tr>
      <tr>
        <td height="40" background="image/zuocedaohang6.jpg">&nbsp;</td>
        <td height="40" background="image/zuocedaohang6.jpg" class="linkBlack"><p align="center"><a href="afficheAction.do?action=0">公告设置<br>
        Manager Placard</a> </p></td>
      </tr>
	    <tr>
        <td height="40" background="image/zuocedaohang7.jpg">&nbsp;</td>
        <td height="40" background="image/zuocedaohang7.jpg" class="linkBlack"><p align="center"><a href="linkAction.do?action=0">友情连接设置<br>
        Link Manager </a></p></td>
      </tr>
      <tr>
        <td height="40" background="image/zuocedaohang8.jpg">&nbsp;</td>
        <td height="40" background="image/zuocedaohang8.jpg" class="linkBlack"><p align="center"><a href="javascript:quit()">退出后台<br>
        Exit Background </a></p></td>
      </tr>
</table>
