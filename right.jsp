<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.GoodsForm" %>
<jsp:useBean id="newGood" scope="page" class="com.dao.GoodsDao"/>
<%List nowList =newGood.selectMark(Integer.valueOf("0"));%>
<%List freeList =newGood.selectMark(Integer.valueOf("1"));%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%if(session.getAttribute("form")!=null||session.getAttribute("id")!=null){%><br>
<table width="100%" height="186"  border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
          <tr>
            <td height="44" colspan="2" align="center" valign="middle" background="image/tejiaoshangpin.jpg">
              <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="22">&nbsp;</td>
                  <td><div align="right" class="linkBlack"><a href="goodsAction.do?action=15&mark=1"><b>更多</b></a></div></td>
                </tr>
            </table>            </td>
          </tr>
          <tr> 
		  
		  
		  
		  
		  
		  <%
              int free=2;
              if(freeList.size()<2){
              free=freeList.size();
              }

              for(int i=0;i<free;i++)
              {
                GoodsForm newGoods=(GoodsForm)freeList.get(i);
                %>
            <td height="80" valign="middle">			<table width="99%" height="136" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
              <tr>
                <td width="23%" rowspan="5" height="80"><input name="pricture<%=i%>" type="image" src="<%=newGoods.getPicture()%>" width="140" height="126"></td>
                <td width="77%" height="20"><div align="center"><%=newGoods.getName()%></div></td>
              </tr>
              <tr>
                <td height="20"><div align="center" style="text-decoration:line-through;color:#910402">原价：<%=newGoods.getNowPrice()%>元</div></td>
              </tr>
              <tr>
                <td height="20"><div align="center"><font color="#F14D83">现价：<%=newGoods.getFreePrice()%>元</font></div></td>
              </tr>
              <tr>
                <td height="20"><div align="center"><%=newGoods.getIntroduce()%></div></td>
              </tr>
              <tr>
                <td height="13"><div align="center" class="linkBlack"><a href="#" onClick="window.open('goodsAction.do?action=16&id=<%=newGoods.getId()%>','','width=500,height=200');">查看详细内容</a></div></td>
              </tr>
            </table></td>
            <%}%>
          </tr>
</table>


<%}%>

<table width="100%" height="590"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="44" align="center" valign="middle" background="image/xinpinshangjia.jpg"><div align="left">
              <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="22">&nbsp;</td>
                  <td><div align="right" class="linkBlack"><a href="goodsAction.do?action=14&mark=0"><b>更多</b></a></div></td>
                </tr>
              </table>
            </div></td>
          </tr>
          <tr>
            <td height="529">
			<%
              int now=5;
              if(nowList.size()<5){
              now=nowList.size();
              }

              for(int i=0;i<now;i++)
              {
                GoodsForm newGoods=(GoodsForm)nowList.get(i);
                %><table width="100%" height="179"  border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="179">				<table width="99%" height="163"  border="2" align="center" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC"   >
                  <tr>
                    <td height="159" bordercolor="#666666" >
                      <table width="96%" height="120"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#EFEFEF" >
                        <tr>
                          <td width="36%" rowspan="4" height="120"><div align="center">
                              <input name="pricture<%=i%>" type="image" src="<%=newGoods.getPicture()%>" width="110" height="100">
                          </div></td>
                          <td width="64%" height="30"><div align="center"><%=newGoods.getName()%></div></td>
                        </tr>
                        <tr>
                          <td height="30"><div align="center"><font color="#F14D83">单价：<%=newGoods.getNowPrice()%>元</font></div></td>
                        </tr>
                        <tr>
                          <td height="30"><div align="center"><%=newGoods.getIntroduce()%></div></td>
                        </tr>
                        <tr>
                          <td height="30" class="linkBlack"><div align="center">
                              <%if(session.getAttribute("form")!=null||session.getAttribute("id")!=null){%>
                              <a href="#" onClick="window.open('goodsAction.do?action=16&id=<%=newGoods.getId()%>','','width=500,height=200');">查看详细内容</a></div>
                              <%}else{%>
                              <div align="center">登录后才能购买</div></td>
                          <%}%>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table>
			<%}%>		
			
			
			
			
			
			</td>
			 
		       
          </tr>
</table>

