<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*"%>
<%@ page import="com.domain.OrderDetailForm"%>
<%@ page import="com.domain.OrderForm"%>
<%@ page import="com.domain.GoodsForm"%>
<%@ page import="com.domain.SellGoodsForm"%>
<%@ page import="com.tool.Chinese"%>
<jsp:useBean id="goodsDao" scope="page" class="com.dao.GoodsDao"/>
<jsp:useBean id="orderDao" scope="page" class="com.dao.OrderDao"/>
<jsp:useBean id="orderDetailDao" scope="page" class="com.dao.OrderDetailDao"/>
<%
OrderForm order=new OrderForm();
OrderDetailForm orderDetail=new OrderDetailForm();
SellGoodsForm sellGoodsForm=new SellGoodsForm();
String number=request.getParameter("number").trim();
//先添加订单表
order.setNumber(number);
order.setName(Chinese.chinese(request.getParameter("name")));
order.setReallyName(Chinese.chinese(request.getParameter("reallyName")));
order.setAddress(Chinese.chinese(request.getParameter("address")));
order.setTel(Chinese.chinese(request.getParameter("tel")));
order.setSetMoney(Chinese.chinese(request.getParameter("setMoney")));
order.setPost(Chinese.chinese(request.getParameter("post")));
order.setBz(Chinese.chinese(request.getParameter("bz")));
order.setSign("0");
orderDao.insertOrderDetail(order);

//然后添加教材的明仔细表
Vector cart=(Vector)session.getAttribute("cart");
for(int i=0;i<cart.size();i++){
  SellGoodsForm form=(SellGoodsForm)cart.elementAt(i);
 orderDetail.setOrderNumber(number);
 orderDetail.setGoodsId(new Integer(form.ID));
 orderDetail.setPrice(form.price);
 orderDetail.setNumber(form.number);
 goodsDao.updateGoodsNumber(form.number,new Integer(form.ID));
 orderDetailDao.insertOrderDetail(orderDetail);
}
out.println("<script language='javascript'>alert('请记住订单编号');window.location.href='cart_clear.jsp';</script>");
%>
