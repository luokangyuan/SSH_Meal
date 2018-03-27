<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>菜品添加页</title>
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
  <!---------------------------------- 循环出菜系 ---------------------------->
    <%-- <s:iterator id="mealSeries" value="#request.mealSeriesList">
    	<a href='toManagerMeal?meal.mealseries.seriesId=${mealSeries.seriesId}'>${mealSeries.seriesName}</a>
    </s:iterator> --%>
    <!--------------------------------- 菜系循环结束 --------------------------->
    <!-------------------------------- 按照菜品搜索框 ---------------------------->
    <s:form action="toManagerMeal" theme="simple" method="post">
    	<s:label value="输入菜名:"></s:label>
    	<s:textfield name="meal.mealName"></s:textfield>
    	<!-- 通过隐藏表单域保存用户选择过的菜系编号，可根据菜品名称和菜系组合查询 -->
    	<s:hidden name="meal.mealseries.seriesId" value="%{#request.seriesId}"></s:hidden>
    	<s:submit value="查询"></s:submit>
    </s:form>
     <!-------------------------------- 按照菜品搜索框 结束---------------------------->
   
   <table align="center" width="95%" cellspacing="1" cellpadding="3"
						style="text-align:center; border:1px #cccccc solid; ">
   <tr style="background-color:#CCCCFF;">
   	<td>菜系</td>
   	<td>菜名</td>
   	<td>摘要</td>
   	<td>价格</td>
   	<td>修改</td>
   	<td>删除</td>
   </tr>
   <s:iterator id="mealItem" value="#request.mealList" status="st">
   	<tr <s:if test="#st.even">style="background-color:#CCCCFF;"</s:if>>
   	<td><s:property value="mealseries.seriesName" /></td>
   	<td ><s:property value="mealName" /></td>
   	<td><s:property value="mealSummarize" /></td>
   	<td><s:property value="mealPrice" /></td>
   	<td><a href="updateMeal?meal.mealId=${mealItem.mealId}">修改</a></td>
   	<td><a href="deleteMeal?meal.mealId=${mealItem.mealId}">删除</a></td>
   	</tr>
   	 </s:iterator>
   	</table>
  
    <!------------------------------------------分页超链接开始 --------------------------->
  <table align="center">
  	<tr>
  		<td width="130"></td>
  		<td width="120">
  		<s:if test="pager.curPage>1">
			<A href='toManagerMeal?pager.curPage=1&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>首页</A>&nbsp;&nbsp;
			<A href='toManagerMeal?pager.curPage=${pager.curPage-1 }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>上一页</A>
		</s:if>
		</td>
		<td width="120">
		<s:if test="pager.curPage < pager.pageCount">
		<A href='toManagerMeal?pager.curPage=${pager.curPage+1}&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>下一页</A>&nbsp;&nbsp;
		<A href='toManagerMeal?pager.curPage=${pager.pageCount }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>尾页</A>
		</s:if>
		</td>
		<td>共${pager.rowCount}条记录，共${pager.curPage}/${pager.pageCount}页&nbsp;&nbsp;							
		</td>
		</tr>	
  </table>
<!-------------------------------------------分页超链接结束 ---------------------->
  </body>
</html>
