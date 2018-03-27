<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>网站首页</title>
<link type="text/css" href="css/showbase.css" rel="stylesheet"
	media="all" />
<script src="js/jquery-1.7.2.js"></script>
<script src="js/jquery.quicksand.js"></script>
<script src="js/jquery.easing.js"></script>
<script src="js/lanrenzhijia.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<link href="css/showPhoto.css" rel="stylesheet" type="text/css" />
<!--去除超链接的下划线-->
<style type="text/css">
<!--
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	
	
}
li{list-style: none;}
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
	<div class="wrapper" style="position: absolute;top: 600px; left: 150px;">
		<div class="portfolio-content">
			<ul class="portfolio-categ filter">
				
			</ul>
			<s:iterator id="mealItem" value="#request.mealList" status="st">
				<s:if test="#st.getIndex()%3==0">
					<ul style="float: left;">
				</s:if>
				<li class="portfolio-item2" data-id="id-0" data-type="cat-item-1">

					<div style="width: 270px;">
						<span class="image-block"> <a class="image-zoom"
							 rel="prettyPhoto[gallery]" title="${mealItem.mealSummarize}">  <img
								width="225" height="140" title="￥${mealItem.mealPrice*0.9}" src="mealimages/${mealImage}" /> </a> </span>
						<div class="home-portfolio-text">
							<h4 class="post-title-portfolio">
								<a href="mealdetail?mealId=${mealItem.mealId}" rel="bookmark">${mealItem.mealName}</a>
							</h4>
							<div style="position: absolute;top: 8px; left: 80px">
								<span style="font-size: 10px;">已售：1008笔</span>
							</div>
							<%-- <div style="position: absolute;top: 1px; left: 80px;">
								<span style="text-decoration: line-through; color: gray">原价：￥${mealItem.mealPrice}元</span>
							</div>
							<p class="post-subtitle-portfolio">现价：￥${mealItem.mealPrice*0.9}元</p> --%>
							<%-- <div style="position: absolute;top: 18px; left: 120px;">
								<a href="addtoshopcart?mealId=${mealItem.mealId}"> <img
									alt="" src="images/buy_cn.gif" border="0" width="60"
									height="20"> </a>
							</div> --%>
							<%-- <div style="position: absolute;top: 18px; left: 185px;">
								<a href="mealdetail?mealId=${mealItem.mealId}"> <img
									alt="" src="images/detail_cn.gif" border="0" width="60"
									height="20"> </a>
							</div> --%>
						</div>
					</div></li>
				<s:if test="#st.getIndex()%3==2">
					</ul>
				</s:if>
			</s:iterator>
			<!------------------------------------------分页超链接开始 --------------------------->
			<table align="right">
				<tr>
				
					<td width="205"><s:if test="pager.curPage>1">
							<A
								href='toShowMeal?pager.curPage=1&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'><img alt="" src="image/topindex.png"></A>
			<A
								href='toShowMeal?pager.curPage=${pager.curPage-1 }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'><img alt="" src="image/previous.png"></A>
						</s:if></td>
					  <td width="450"><s:if test="pager.curPage < pager.pageCount">
					   <a><img alt="" src="image/1.png"></a>
		                    <a href='toShowMeal?pager.curPage=2&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'><img alt="" src="image/2.png"></a>
		                    <a href='toShowMeal?pager.curPage=3&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'><img alt="" src="image/3.png"></a>
		                    <a><img alt="" src="image/dots.png"></a>
		                    <a href='toShowMeal?pager.curPage=6&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'><img alt="" src="image/5.png"></a>
		                   
		                   
							<A
								href='toShowMeal?pager.curPage=${pager.curPage+1}&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'><img alt="" src="image/next.png"></A>&nbsp;&nbsp;
		                   
		                    <A
								href='toShowMeal?pager.curPage=${pager.pageCount }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'><img alt="" src="image/wei.png"></A>
						</s:if></td>
					<%-- <td  height="20" style="background: url('image/fenyeshu.png');"><font style="font-size: 12px;">共${pager.rowCount}条记录，共${pager.curPage}/${pager.pageCount}页</font>&nbsp;&nbsp; --%>
					</td>
				</tr>
			</table>
		</div>
	</div>

	
</body>
</html>
