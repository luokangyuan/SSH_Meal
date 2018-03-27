<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>标题</title>

<link  href="css/title.css" type="text/css" rel="stylesheet" media="screen"  />
<script src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/title.js"></script>

</head>

<body>



 <s:include value="/index.jsp"></s:include>
 
	<div class="menu">
		<ul class="nav">
			<li class="luo">
				<a href="#">菜谱大全</a>
				<div class="box">
                	<div class="jiachang">
					<a href="#"><font color="#FF0000">家常菜谱</font></a><br />
                    <a href="#">家常菜</a><a href="#">凉菜</a><a href="#">素食</a><a href="#">私房菜</a><a href="#">热菜</a><a href="#">海鲜</a>
                    <a href="#">孕妇</a><a href="#">早餐</a><a href="#">午餐</a><a href="#">甜品点心</a><a href="#">汤粥</a><a href="#">宝宝食谱</a>
                    <a href="#">糕点主食</a>
                    </div>
                    <div class="zhonghua">
					<a href="#"><font color="#FF0000">中华菜系</font></a><br />
                    <a href="#">川菜</a><a href="#">粤菜</a><a href="#">东北菜</a><a href="#">湘菜</a><a href="#">鲁菜</a><a href="#">浙菜</a>
                    <a href="#">湖北菜</a><a href="#">清真菜</a>
                   </div>
                    <div class="xiaochi">
					<a href="#"><font color="#FF0000">各地小吃</font></a><br />
                    <a href="#">四川小吃</a><a href="#">广东小吃</a><a href="#">北京小吃</a><a href="#">陕西小吃</a><a href="#">湖南小吃</a>
                    </div>
                    <div class="waiguo">
					<a href="#"><font color="#FF0000">外国菜谱</font></a><br />
                    <a href="#">韩国料理</a><a href="#">日本料理</a><a href="#">法国菜</a><a href="#">意大利餐</a>
                    </div>
                    <div class="hong">
					<a href="#"><font color="#FF0000">烘焙</font></a><br />
                    <a href="#">蛋糕面包</a><a href="#">饼干配方</a><a href="#">甜品点心</a>
                    </div>
                    <div class="chufang">
					<a href="#"><font color="#FF0000">厨房百料</font></a><br />
                    <a href="#">摆盘围边</a><a href="#">烹饪技巧</a><a href="#">生活妙招</a><a href="#">美食专题</a>
                    </div>
                    <div class="shicai">
					<a href="#"><font color="#FF0000">食材百科</font></a><br />
                    <a href="#">蔬菜</a><a href="#">水果</a><a href="#">谷类</a>
                    </div>
				</div>
			</li>
			<li class="luo"><a href="#">美食菜单</a></li>
			<li class="luo">
				<a href="#">饮食健康</a>
				
			</li>
			<li class="luo">
				<a href="#">八大菜系</a>
				
				<div class="box">
				<s:iterator id="mealSeries" value="#request.mealSeriesList">
					<a href='toShowMeal?meal.mealseries.seriesId=${mealSeries.seriesId}'>${mealSeries.seriesName}</a>
					</s:iterator>
				</div>
			</li>
			<li class="luo"><a href="#">家居馆</a></li>
			<li class="luo"><a href="#">美食达人</a></li>
            <li class="luo"><a href="#">手机版下载</a></li>
		</ul>
	</div>
	<s:include value="/index.html"></s:include>
 <s:include value="/show.jsp"></s:include>
 <!-- <jsp:include page="/sontitle.jsp"></jsp:include> -->
 
 <s:include value="/meal_1.jsp"></s:include>
 
</body>
</html>