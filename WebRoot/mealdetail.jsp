﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>菜品详情页</title>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<link type="text/css" rel="stylesheet" href="css/lrtk.css"></link>
<link  rel="stylesheet" href="css/index.css" ></link>
<script src="js/jquery.js"></script>
<script src="js/index.js"></script>
</head>
<body>
	<script type="text/javascript">

  $(function MouseMenuLink(){
   if(window.event.toElement.id!="Dirmenubar" && window.event.toElement.id!="menu") menu.style.visibility = "hidden";
});

</script>
<jsp:include page="/seindex.jsp"></jsp:include>
	<!------------------------------------ 图片详情 ---------------------------------->
	<div class="zoomybox">
		<a class="zoom" href="mealimages/${meal.mealImage}"> <s:iterator
				var="meal" value="#request.meal">
				<img src="mealimages/${meal.mealImage}" width="450" height="280"></img>
		</a>
		<div style="position: absolute; left:480px; top: 0px; ">
		<font color="red" style="font-size: 26px;">[${meal.mealseries.seriesName}]</font>
		<font>${meal.mealName}</font>
		<font>${meal.mealSummarize}</font>
		</div>
		<div  style="position: absolute; left:480px; top: 40px; ">
		<span style="text-decoration: line-through; color: gray">价格：￥${meal.mealPrice}</span>
		</div>
		<div  style="position: absolute; left:480px; top: 75px; ">
		促销价：<span style=" color: red">￥${meal.mealPrice*0.9}</span>
		</div>
		<div  style="position: absolute; left:480px; top: 115px; ">
		来源：<span style=" color:gray ">${meal.mealDescription}</span>
		</div>
		<div style="position: absolute; left:480px; top: 240px; ">
		<a href="addtoshopcart?mealId=${meal.mealId}"><img alt="" src="image/liji.png"></img></a>
		</div>
		<div style="position: absolute; left:700px; top: 240px; ">
		<a href="addtoshopcart?mealId=${meal.mealId}"><img alt="" src="image/goumai.png"></img></a>
		</div>
	</div>
	</s:iterator>
	<!----------------------------------- 标题 ---------------------------------->
	<div style="position: absolute;left: 200px; top: 180px;" class="menu">
		<ul>
		<s:iterator value="#request.mealseriesList" var="series">
		<li><a>${series.seriesName}</a></li>
		</s:iterator>
		</ul>	
	</div>
	<div style="position: absolute; left:940px; top: 180px; ">
		<a href="down"><img width="160" alt="" src="image/dowload.png"></img></a>
		</div>
	<!--------------------------------------- 结束 --------------------------->
	<div style="position:absolute; top:540px; width:1348px; height:330px; background:#f5f5f5;">
        <div style="position:absolute; left:200px; top:10px;">
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
        <div style="position:absolute; left:200px; top:150px;">合作伙伴</div>
        <div style="letter-spacing:20px; position:absolute; left:200px; top:180px;">
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
         <div  style="position:absolute; left:200px; top:220px;">友情链接</div>
         <div  style="position:absolute; left:200px; top:260px;">
         <a >美食家</a><a style="padding-left:20px;">美食杰</a><a style="padding-left:20px;">名厨网</a>
         <a style="padding-left:20px;">妈妈网</a><a style="padding-left:20px;">亲宝网</a>
         <a style="padding-left:20px;">慧聪网</a><a style="padding-left:20px;">装修网</a>
         <a style="padding-left:20px;">红餐微杂志</a><a style="padding-left:20px;"> hao123菜谱</a>
         
         </div>
         <div  style="position:absolute; left:200px;  top:300px;">
         <a >糖酒快讯 </a> <a style="padding-left:20px;">中华美食网</a>
         <a style="padding-left:20px;"> POCO美食网</a> <a style="padding-left:20px;">百年餐饮网</a> <a style="padding-left:20px;">食品商务网</a> 
         <a style="padding-left:20px;">三九养生堂</a> <a style="padding-left:20px;">饭菜网</a> <a style="padding-left:20px;">糖豆网</a>
         </div>
        </div>
	<!----------------------------------- 舌尖上的美味 ---------------------------------->
	<div style="position: absolute; top: 90px; left: 200px; width:900px;height:90px;  background:url(image/sge.jpg)">
    </div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.zoomy0.5.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('.zoom').zoomy();
		});
	</script>



	<jsp:include page="/seindex.jsp"></jsp:include>

</body>
</html>
