<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib  uri="http://java.fckeditor.net" prefix="fck"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>菜品添加页</title>
  </head> 
  <body style="background: #3A5070">
  <div style="width: 900px; margin: 0px; position: absolute;top: 0px; left: 20px; z-index: 1">
  	<img width="120" alt="" src="../image/charact.png">
  	</div>
  	<div style="position: absolute;top: 12px; left: 24px; z-index: 10">
  	<font style="font-size: 14px; color:#FFFFFF">添加菜品 </font>
  	</div>
  	<div style=" height: 16px; width: 1200px; position: absolute;top:31px; left: 128px; " >
  	<img  alt="" src="../image/chart_01.png">
  	</div>
  	<div style="position: absolute;top: 44px; left: 20px; z-index: 10">
  	<img  alt="" src="../image/bg_banner_menu.gif">
  	</div>
  	<div style="position: absolute;top: 60px; left:20px; background:#FFFFFF; width: 1070px; height: 1030px;">
    	<s:form action="doAddMeal" method="post" enctype="multipart/form-data">
   		
   		
   		
   		
   		<table align="left">
   			<tr>
   			<td>菜名</td>
   			<td><s:textfield name="meal.mealName" label="菜名"></s:textfield></td>
   			<td>菜系</td>
   			<td><s:select list="#request.mealSeriesList" name="meal.mealseries.seriesId" 
   			 listKey="seriesId" listValue="seriesName" ></s:select></td>
   			</tr>
   			
   			 <tr>
   			 <td>摘要</td>
   			 
   			 <td><s:textfield name="meal.mealSummarize"  /></td>
   			 <td>价格</td>
   			 <td><s:textfield name="meal.mealPrice"  /></td>
   			 </tr>
   			<!--   <tr>
   			 <td>介绍</td>
   			 <td><s:textarea name="meal.mealDescription"  /></td>
   			 </tr> -->
   			 <tr>
   			 <td>菜品介绍</td>
   			 </tr>
   			  <div style="position: absolute; top: 90px; left:10px; z-index: 100; width: 1100px;" >
                <fck:editor instanceName="myEditor" basePath="/fckeditor" value="东坡肘子起源于"></fck:editor>
                 </div>
                 <tr>
                 <td height="200px"></td></tr>
                   <tr>
                 <td></td></tr>
                   <tr>
                 <td></td></tr>
                   <tr>
                 <td></td></tr>
   			 <tr style="margin-top: 800px">
   			 <td>图片</td>
   			 <td><s:file name="doc"  /></td>
   			 </tr>
   			 <tr>
   			 <td align="left" ><s:submit value="确定"></s:submit></td>
   			 </tr>
   		</table>
   	</s:form>
    </div>
    <!-- <div style="position: absolute; top: 250px; left:50px; z-index: 100; width: 1000px;" >
    <fck:editor instanceName="myEditor" basePath="/fckeditor" value="gg"></fck:editor>
  </div> -->
  </body>
</html>
