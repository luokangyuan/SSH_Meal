<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>购物车页面</title>
      	<!--去除超链接的下划线-->
<style type="text/css">
<!--
a:link {
text-decoration: none;
}
a:visited {
text-decoration: none;
}
a:hover {
text-decoration: none;
}
a:active {
text-decoration: none;
}
-->
</style> 
  </head> 
  <body>
  <div style="position: absolute; top: 130px; left: 200px;">
  <div><font color="red" style="font-size: 26px;">全部商品</font></div>
  <div><hr color="red"></div>
  <div style="position: absolute; top: 50px; left: 0px; width: 400px;">
    <input type="checkbox" name="choseall">全选
  </div>
  <div style="position: absolute; top: 50px; left: 70px; width: 400px;">餐品信息</div>
  <div style="position: absolute; top: 50px; left: 450px; width: 100px;">单价(元)</div>
  <div style="position: absolute; top: 50px; left: 591px; width: 100px;">数量</div>
  <div style="position: absolute; top: 50px; left: 672px; width: 100px;">金额(元)</div>
  <div style="position: absolute; top: 50px; left: 800px; width: 100px;">操作</div>
  <div style="position: absolute; top: 80px; left: 0px; width: 900px;"><hr color="black"></div>
  <div style="position: absolute; top: 35px; left: 100px; width: 800px;"><hr color="black"></div>
  </div>
  
 <div >
  <table  style="position: absolute;top: 250px; left: 200px;" >
 
    <s:set var="sumPrice" value="0"></s:set>
    <s:iterator id="cartItem" value="#session.cart">
    	<tr style="background-color: #FFFFFF">
    		<td style="text-align: left;" width="60px"> <input type="checkbox" name="choseall"></td>
    		<td style="text-align: center;"><img width="112" height="70" alt="" src="mealimages/<s:property value="value.meal.mealImage" />"></td>
    		<td style="text-align: center; width: 120px"><s:property value="value.meal.mealName" /></td>
    			<td style="text-align: center;  width: 140px">餐品分类：<s:property value="value.meal. mealseries.seriesName" /></td>
    		<td style="text-align: center; width:120px ">￥<s:property value="value.meal.mealPrice*0.9" /></td>
    		<td style="text-align: center;">
    		<input style="text-align: center; " type="text" value="${value.quantity}" size="10"
    		onchange="window.location='updateSelectedQuantity?mealId=${value.meal.mealId}&quantity='+this.value;">
    		</td>
    		<td style="text-align: center; width: 130px">￥<s:property value="value.quantity*value.meal.mealPrice*0.9" /></td>
    		<td  style="text-align: center;">
    		<a href="deleteSelectedOrders?mealId=${value.meal.mealId}">删除</a>
    		</td>
    	</tr>
    	<s:set var="sumPrice" value="#sumPrice+value.quantity*value.meal.mealPrice*0.9"></s:set>
    	<br>
    </s:iterator>
    <tr style="background-color: #ccccFF">
    	<td colspan="9">合计-------------------
    	
    
    	￥：<s:property value="#sumPrice"/>
    	<s:set var="sumPrice" value="#sumPrice" scope="session"></s:set>
    	--------------------------
    	</td>
    	
    </tr>
    <tr>
    <td colspan="9"><a href="clearCart">清空购物车</a><a href="addOrders">结算</a><a href="toShowMeal">继续购物</a></td>
    </tr>
    </table>
   
    </div>
   
   <jsp:include page="/seindex.jsp"></jsp:include>
  
  </body>
</html>
