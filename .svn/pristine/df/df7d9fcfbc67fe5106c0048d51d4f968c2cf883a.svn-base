<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>孩子菜谱</title>
  </head>
  <body style="background: #3A5070">
  	<div style="width: 900px; margin: 0px; position: absolute;top: 0px; left: 20px; z-index: 1">
  	<img width="120" alt="" src="../image/charact.png">
  	</div>
  	<div style="position: absolute;top: 12px; left: 24px; z-index: 10">
  	<font style="font-size: 14px; color:#FFFFFF">美食魔方</font>
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
    	    <td style="background: url('../image/bg_th.gif'); width: 50px">图片</td>
    		<td style="background: url('../image/bg_th.gif'); width: 100px">菜名</td>
    		<td style="background: url('../image/bg_th.gif'); width: 200px" >简要</td>
    		<td style="background: url('../image/bg_th.gif'); width: 50px">菜图</td>
    		<td style="background: url('../image/bg_th.gif'); width: 110px">菜名</td>
    		<td style="background: url('../image/bg_th.gif'); width: 50px">菜图</td>
    		<td style="background: url('../image/bg_th.gif'); width: 110px">菜名</td>
    		<td style="background: url('../image/bg_th.gif'); width: 50px">菜图</td>
    		<td style="background: url('../image/bg_th.gif'); width: 110px">菜名</td>
    		<td style="background: url('../image/bg_th.gif'); width: 70px">修改</td>
    		<td style="background: url('../image/bg_th.gif'); width: 70px">删除</td>
    		</tr>
    		 <s:iterator var="mealmo" value="#request.mealmoList">
    		<tr >
    		<td><img width="30" height="30" alt="" src="../mealimages/${mealmo.picture}"></td>
    		
    		<td>
    		<s:if test="#mealmo.name.length() > 4">
    		<s:property value="#mealmo.name.substring(0,4)"/>...
    		</s:if>
    		</td>
    		<td>
    		<s:if test="#mealmo.sumprice.length() > 10">
    		<s:property value="#mealmo.sumprice.substring(0,10)"/>...
    		</s:if>
    		</td>
    		<td><img width="30" height="30" alt="" src="../mealimages/${mealmo.pic1}"></td>
    		<td>
    		<s:if test="#mealmo.tit1.length() > 5">
    		<s:property value="#mealmo.tit1.substring(0,5)"/>...
    		</s:if>
    		</td>
    		<td><img width="30" height="30" alt="" src="../mealimages/${mealmo.pic2}"></td>
    			
    		<td>
    		<s:if test="#mealmo.tit2.length() > 5">
    		<s:property value="#mealmo.tit2.substring(0,5)"/>...
    		</s:if>
    		</td>
    		<td><img width="30" height="30" alt="" src="../mealimages/${mealmo.pic3}"></td>
    		<td>
    		<s:if test="#mealmo.tit3.length() > 5">
    		<s:property value="#mealmo.tit3.substring(0,5)"/>...
    		</s:if>
    		</td>
    		<td>修改</td>
    		<td>删除</td>
 
    		</tr>
    		 </s:iterator>
    	</table>
   		</div>
    </div>
  </body>
</html>
