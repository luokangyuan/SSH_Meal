<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>菜品添加页</title>
  </head> 
  <body>
   	<s:form action="doAddMeal" method="post" enctype="multipart/form-data">
   		<table align="center">
   			<tr>
   			<td>菜名</td>
   			<td><s:textfield name="meal.mealName" label="菜名"></s:textfield></td>
   			</tr>
   			<tr>
   			<td>菜系</td>
   			<td><s:select list="#request.mealSeriesList" name="meal.mealseries.seriesId" 
   			 listKey="seriesId" listValue="seriesName" ></s:select></td>
   			 </tr>
   			 <tr>
   			 <td>摘要</td>
   			 <td><s:textfield name="meal.mealSummarize"  /></td>
   			 </tr>
   			  <tr>
   			 <td>介绍</td>
   			 <td><s:textarea name="meal.mealDescription"  /></td>
   			 </tr>
   			  <tr>
   			 <td>价格</td>
   			 <td><s:textfield name="meal.mealPrice"  /></td>
   			 </tr>
   			 <tr>
   			 <td>图片</td>
   			 <td><s:file name="doc"  /></td>
   			 </tr>
   			 <tr>
   			 <td align="center" colspan="2"><s:submit value="确定"></s:submit></td>
   			 </tr>
   		</table>
   	</s:form>
  </body>
</html>
