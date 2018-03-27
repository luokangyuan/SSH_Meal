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
    	    <td style="background: url('../image/bg_th.gif'); width: 50px">图片</td>
    		<td style="background: url('../image/bg_th.gif'); width: 150px">菜名</td>
    		<td style="background: url('../image/bg_th.gif'); width: 200px" >简要</td>
    		<td style="background: url('../image/bg_th.gif'); width: 90px">主料</td>
    		<td style="background: url('../image/bg_th.gif'); width: 90px">辅料</td>
    		<td style="background: url('../image/bg_th.gif'); width: 80px">厨具</td>
    		<td style="background: url('../image/bg_th.gif'); width: 60px">图解</td>
    		<td style="background: url('../image/bg_th.gif'); width: 140px">步骤文字</td>
    		<td style="background: url('../image/bg_th.gif'); width: 70px">修改</td>
    		<td style="background: url('../image/bg_th.gif'); width: 70px">删除</td>
    		</tr>
    		 <s:iterator var="child" value="#request.childList">
    		<tr >
    		<td><img width="30" height="30" alt="" src="../mealimages/${child.picture}"></td>
    		<td>${child.name}</td>
    		<td>
    		<s:if test="#child.sumprice.length() > 10">
    		<s:property value="#child.sumprice.substring(0,10)"/>...
    		</s:if>
    		</td>
    		<td>
    		<s:if test="#child.menu.length() > 8">
    		<s:property value="#child.menu.substring(0,8)"/>...
    		</s:if>
    		</td>
    		<td>
    		<s:if test="#child.fumenu.length() > 11">
    		<s:property value="#child.fumenu.substring(0,8)"/>...
    		</s:if>
    		</td>
    		<td>
    		<s:if test="#child.chuju.length() > 3">
    		<s:property value="#child.chuju.substring(0,3)"/>...
    		</s:if>
    		</td>
    		<td><img width="30" height="30" alt="" src="../mealimages/${child.teppicture1}"></td>
    		<td>
    		<s:if test="#child.tepfont1.length() > 8">
    		<s:property value="#child.tepfont1.substring(0,8)"/>...
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
