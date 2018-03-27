<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>订单处理页</title>
  </head>
  <body>
  <s:form action="toManagerOrders" theme="simple" method="post" >
  	<s:label>订单编号</s:label>
  	<s:textfield name="order.oId"></s:textfield>
  	<s:label>订单状态</s:label>
  	<s:select list="#{'全部':'全部','未处理':'未处理','已处理':'已处理'}" name="order.orderState" listKey="key" listValue="value"></s:select>
  	<s:submit value="查询"></s:submit>
  </s:form>
  <table align="center" width="95%" cellspacing="1" cellpadding="3"
						style="text-align:center; border:1px #cccccc solid; ">
   <tr style="background-color:#CCCCFF;">
   	<td>订单编号</td>
   	<td>订单时间</td>
   	<td>订单状态</td>
   	<td>订单金额</td>
   	<td>订单处理</td>
   </tr>
  	<s:set var="total" value="0"></s:set>
  	<s:iterator id="orders" value="#request.ordersList" status="st">
  	<tr <s:if test="#st.even">style="background-color: #CCCCFF;"</s:if>>
  	   <td><s:property value="oid" />${orders.oId}</td>
  	   <td><s:property value="orderTime" /></td>
  	   <td><s:property value="orderState" /></td>
  	    <td><s:property value="orderPrice" /></td>
  	    <td>
  	    	<s:if test="#orders.orderState=='未处理'">
  	    		<a href="handOrders?ooderid=${orders.oId}"><img src="images/Icon017.png" width="40" height="40" /></a>
  	    	</s:if>
  	    </td>
  	</tr>
  	</s:iterator>
  		<!-- 分页超链接开始 -->
	<table align="center">
	  <tr>
		
		<td>
			<s:if test="pager.curPage>1">
				<A href='toManagerOrders?pager.curPage=1&ffd=${requestScope.ordersid}&sta=${requestScope.orderState}'>首页</A>
				<A href='toManagerOrders?pager.curPage=${pager.curPage-1 }&ffd=${requestScope.ordersid}&sta=${requestScope.orderState}'>上一页</A>
			</s:if>
		</td>
		<td>
			<s:if test="pager.curPage < pager.pageCount">
				<A href='toManagerOrders?pager.curPage=${pager.curPage+1}&ffd=${requestScope.ordersid}&sta=${requestScope.orderState}'>下一页</A>
				<A href='toManagerOrders?pager.curPage=${pager.pageCount }&ffd=${requestScope.ordersid}&sta=${requestScope.orderState}'>尾页</A>
			</s:if>
		</td>
		<td>共${pager.rowCount}记录，共${pager.curPage}/${pager.pageCount}页&nbsp;&nbsp;${requestScope.ordersid}
		
		</td>
	  </tr>
	</table>				
						<!-- 分页超链接结束-->				
  	</table>
  </body>
</html>
