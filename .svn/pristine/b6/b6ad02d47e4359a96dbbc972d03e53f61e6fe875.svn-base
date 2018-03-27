<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>我的订单</title>
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
  <jsp:include page="/seindex.jsp"></jsp:include>
<!---------------------------   确认收货地址 ---------------->
   <div  style="position: absolute;top: 140px; left: 200px;">
   确认收货地址
   <div ><hr width="900" color="#ddd8d8"></div>
   <div style="position: absolute;top: 0px; left: 800px;"><a>管理收货地址</a></div>
   <div>
   <div style="background:url('image/local.png') ; width: 900px; height: 58px; ">
   <div style="margin-left: 100px;">
   <s:radio  list="''" value=""></s:radio><font style="font-size: 18px; font-family: 微软雅黑;">${sessionScope.user.trueName}${sessionScope.user.address}${sessionScope.user.phone}</font><br>
    </div>
    <div style="margin-left: 120px">默认地址</div>
  <div style="position: absolute;top: 45px; left: 800px;"><a>修改本地址</a></div>
  </div>
  <div style="margin-left: 80px; ">
   ${sessionScope.user.trueName}${sessionScope.user.address1}${sessionScope.user.phone}<br>
   </div>
   <div style="margin-left: 80px; margin-top: 10px;">
   ${sessionScope.user.trueName}${sessionScope.user.address2}${sessionScope.user.phone}<br>
     </div>
   <div style="margin-left: 80px; margin-top: 10px;">
   ${sessionScope.user.trueName}${sessionScope.user.address3}${sessionScope.user.phone}<br>
    </div>
  <div style="margin-left: 80px; margin-top: 10px;">
   ${sessionScope.user.trueName}${sessionScope.user.address4}${sessionScope.user.phone}
  </div>
   </div>
   <div  style="margin-left: 80px; margin-top: 10px;"><a>使用其他地址</a></div>
</div>
  <!--------------------   确认订单信息 ---------------------->
  <div style="position: absolute;top:400px; left: 200px;">
  		<div >确认订单信息</div>
  		<div style="margin-top: 20px;">
  		<font style="padding-left: 40px;">订单编号</font><font style="padding-left: 180px;">订单时间</font>
  		<font style="padding-left: 180px;">订单状态</font><font style="padding-left: 90px;">总额(元)</font>
  		<font style="padding-left: 80px;">订单操作</font>
  		</div>
  		<div><hr></div>
  		
  </div>
  
  
  <div style="margin-top: 500px;">
  <table  align="center" width="70%" style="text-align: center;">
  
     <s:set var="total" value="0"></s:set>
     <s:iterator id="myorders" value="#request.myOrdersList" status="st">
     	<tr <s:if test="#st.even"></s:if>>
     		<td><s:property value="oId" />${myorders.oId}</td>
     		<td><s:property value="orderTime" /></td>
     	    <td><s:property value="orderState" /></td>
     	    <td><font color="red"><s:property value="orderPrice" /></font></td>
     	    <td>
     	    <a href='toOrdersDetaile?orderId=${myorders.oId}'>查看</a>
     	    </td>
     	    
     	    <td>
     	    <a href="deleteOrders?orderId=${myorders.oId}">删除</a>
     	    </td>
     	</tr>
     	<s:set var="order" value="123"></s:set>
     	<s:set var="orderid" value="oId"></s:set>
     	<s:set var="total" value="#total+orderPrice"></s:set>
     	
     </s:iterator>
   <tr style="text-align: left;height: 60px;">
   <td colspan="8" ><font style="font-size: 14px;">&nbsp;&nbsp;&nbsp;给我们留言:</font>
   <input type="text" style="width: 400px;">
  &nbsp;&nbsp; 运送方式:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio"  value="普通配送">普通配送
  <s:select list="'快递 免邮'"></s:select>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">0.00</font>
   </td>
   </tr>
   <tr style="text-align: right;">
   	<td  colspan="8" >
   	<div><font  style="font-size: 13px;">运费险:</font>&nbsp;&nbsp;&nbsp;
   	<font  style="font-size: 13px;">卖家已为你的运费投保，最高</font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">0.00&nbsp;&nbsp;&nbsp;&nbsp;</font></div>
   	</td>
   </tr>
   <tr style="text-align: right;">
   <td colspan="8">
   店铺合计(含运费，服务费):￥<font color="red" style="font-size: 13px;"><s:property value="#total"/>&nbsp;&nbsp;&nbsp;&nbsp;</font>
   </td>
   </tr>
   <tr style="text-align: right;">
   <td colspan="8">
   <input type="checkbox"><font  style="font-size: 13px;">找人代付</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="checkbox"><font  style="font-size: 13px;">匿名购买</font>&nbsp;&nbsp;&nbsp;&nbsp;
   </td>
   </tr>
     
     </table>
     </div>
     <div style="background:url('image/jieb.png') ;width: 450px; height: 180px; position: absolute;left: 670px; " >
     <div style="margin-left: 260px; margin-bottom: 10px;">
       实付款：<font style="font-size: 30px; font-weight: bolder;" color="#463f3e">￥</font><font style="font-size: 30px; font-weight: bolder;" color="red"><s:property value="#total"/></font>
     </div>
     <div  style="margin-left: 20px;">
    寄送至： ${sessionScope.user.address}
     </div>
     <div style="margin-left: 210px; margin-top: 10px;">
     收货人： ${sessionScope.user.trueName}&nbsp;${sessionScope.user.phone}
     </div>
     <div style="margin-left: 310px;margin-top: 10px;">
       <a  href="payment.jsp?orderid=<s:property value="#order"/>&&paymoney=<s:property value="#total"/>"><img src="image/jie.png"></a>
     </div>
     </div>
   
      <div style="position:absolute; top:900px; width:1348px; height:330px; background:#f5f5f5;">
        <div style="position:absolute; left:150px; top:10px;">
        <ul><a><font>关于美食家</font></a>
        <li> <a><font>加入我们</font></a></li>
        <li><a><font>联系我们</font></a></li>
        <li><a><font>网站地图</font></a></li>
        <li><a><font>帮助/反馈</font></a></li>
        </ul>
        </div>
         <div style="position:absolute; left:820px; top:10px;">
          <ul><a><font>时下最热</font></a>
        <li> <a><font>荠菜</font></a> <a style="padding-left:52px;"><font> 火腿风情</font></a><a style="padding-left:32px;"><font> 吃出好气色</font></a> </li>
        <li><a><font> 美食电影</font></a> <a style="padding-left:22px;"><font>春季增高</font></a><a style="padding-left:32px;"><font>排毒宝典</font></a> </li>
        <li><a><font> 吸烟必吃</font></a> <a style="padding-left:22px;"><font>"菌"临天下</font></a >
        <a style="padding-left:12px;"><font> 打卤馕记</font></a> </li>
        <li><a><font>减肥狂潮</font></a> <a style="padding-left:22px;"><font> 苹果婊</font></a><a style="padding-left:45px;"><font>韭菜</font></a> </li>
        </ul>
        </div>
      <div style="position:absolute; left:510px; top:10px;">
       <ul><a><font>菜谱大全</font></a>
        <li> <a><font>千道家常菜</font></a> <a style="padding-left:22px;"><font>所有分类</font></a></li>
        <li><a><font> 热菜</font></a> <a style="padding-left:70px;"><font> 凉菜</font></a></li>
        <li><a><font>汤羹</font></a> <a style="padding-left:70px;"><font>自制食材</font></a></li>
        <li><a><font>儿童菜</font></a> <a><font style="padding-left:55px;"> 开胃菜</font></a></li>
        </ul>
      </div>
        <div style="position:absolute; left:150px; top:150px;">合作伙伴</div>
        <div style="letter-spacing:20px; position:absolute; left:150px; top:180px;">
         <img src="mealimages/end_01.png" />
         <img src="mealimages/end_02.png" />
         <img src="mealimages/end_03.png" />
         <img src="mealimages/end_04.png" />
         <img src="mealimages/end_05.png" />
         <img src="mealimages/end_06.png" />
         <img src="mealimages/end_07.png" />
         <img src="mealimages/end_08.png" />
         <img src="mealimages/end_09.png" />
         <img src="mealimages/end_010.png" />
         </div>
         <div  style="position:absolute; left:150px; top:220px;">友情链接</div>
         <div  style="position:absolute; left:150px; top:260px;">
         <a >美食家</a><a style="padding-left:20px;">美食杰</a><a style="padding-left:20px;">名厨网</a>
         <a style="padding-left:20px;">妈妈网</a><a style="padding-left:20px;">亲宝网</a>
         <a style="padding-left:20px;">慧聪网</a><a style="padding-left:20px;">装修网</a>
         <a style="padding-left:20px;">红餐微杂志</a><a style="padding-left:20px;"> hao123菜谱</a>
         
         </div>
         <div  style="position:absolute; left:150px;  top:300px;">
         <a >糖酒快讯 </a> <a style="padding-left:20px;">中华美食网</a>
         <a style="padding-left:20px;"> POCO美食网</a> <a style="padding-left:20px;">百年餐饮网</a> <a style="padding-left:20px;">食品商务网</a> 
         <a style="padding-left:20px;">三九养生堂</a> <a style="padding-left:20px;">饭菜网</a> <a style="padding-left:20px;">糖豆网</a>
         </div>
        </div>
  </body>
</html>
