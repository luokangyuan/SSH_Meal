<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>各地特色</title>
   
  </head>
  
  <body style="background: #3A5070">
  	<div style="width: 900px; margin: 0px; position: absolute;top: 0px; left: 20px; z-index: 1">
  	<img width="120" alt="" src="../image/charact.png">
  	</div>
  	<div style="position: absolute;top: 12px; left: 24px; z-index: 10">
  	<font style="font-size: 14px; color:#FFFFFF">各地特色</font>
  	</div>
  	<div style=" height: 16px; width: 1200px; position: absolute;top:31px; left: 128px; " >
  	<img  alt="" src="../image/chart_01.png">
  	</div>
  	<div style="position: absolute;top: 44px; left: 20px; z-index: 10">
  	<img  alt="" src="../image/bg_banner_menu.gif">
  	</div>
  	<div style="position: absolute;top: 60px; left:20px; background:#FFFFFF; width: 1070px; height: 1030px;">
    	<div style="position: absolute;top: 20px; left: 30px;">
    	<table>
    		<tr style="height: 32px;">
    	    <td style="background: url('../image/bg_th.gif'); width: 70px">图片</td>
    		<td style="background: url('../image/bg_th.gif'); width: 100px">菜系</td>
    		<td style="background: url('../image/bg_th.gif'); width: 100px" >菜名</td>
    		<td style="background: url('../image/bg_th.gif'); width: 630px">原料</td>
    		<td style="background: url('../image/bg_th.gif'); width: 90px">修改</td>
    		<td style="background: url('../image/bg_th.gif'); width: 90px">删除</td>
    		</tr>
    		 <s:iterator var="char" value="#request.chartList">
    		<tr >
    		<td><img width="50" alt="" src="../mealimages/${char.picture}"></td>
    		<td>${char.seriesname}</td>
    		<td>${char.name}</td>
    		<td>${char.rawMaterial}</td>
    		<td>修改</td>
    		<td>删除</td>
    		</tr>
    		 </s:iterator>
    	</table>
   		</div>
    </div>
  </body>
</html>
