<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>网站头部</title>
  </head> 
  <body>
  
  <s:if test="#session.user==null&&#session.admin==null">
    <s:a href="#">|&nbsp;网站首页&nbsp;</s:a>
    <s:a href="#">|&nbsp;用户注册&nbsp;|</s:a>
    <s:a href="login.jsp?role=user">&nbsp;用户登录&nbsp;|</s:a>
    <s:a href="login.jsp?role=admin">&nbsp;管理员登录&nbsp;|</s:a>
 </s:if>
 <s:if test="#session.user!=null">
  <a href="toShowMeal">网站首页</a>  |
	<a href="modifyMyInfo.jsp">修改个人信息</a>  |
	 <a href="shopCart.jsp">我的购物车</a>  |
	 <a href="toMyOrders">我的订单</a>  |
	 <a href="logOut?type=userlogout">注销</a>
	 &nbsp; &nbsp; &nbsp;<font style="color: red">欢迎你:${sessionScope.user.trueName}</font>
</s:if>
<s:if test="#session.admin!=null">
    <a href="toShowMeal">网站首页</a>  |
	<a href="toAddMeal">添加餐品</a>  |
	 <a href="toManagerMeal">管理餐品</a>  |
	 <a href="toManagerOrders">订单处理</a>  |
	 <a href="logOut?type=adminlogout">注销</a>
	 &nbsp; &nbsp; &nbsp;<font style="color: red">欢迎你:${sessionScope.admin.loginName}</font>
</s:if>
  </body>
</html>