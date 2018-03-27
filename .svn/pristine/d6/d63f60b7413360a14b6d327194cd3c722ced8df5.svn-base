<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>   
    <title>网站头部</title>
   <link href="css/css.css" rel="stylesheet" type="text/css" />
  </head> 
  
  <body>
  <div id="side_left_menu">
  
  <ul class="side_list">
  <s:iterator id="mealSeries" value="#request.mealSeriesList">
    <li >
      <div class="side_text">
        <h2><a href='toShowMeal?meal.mealseries.seriesId=${mealSeries.seriesId}'>${mealSeries.seriesName}</a></h2>
      </div>
    </li>
    </s:iterator>
   
  </ul>
</div>
  </body>
  </html>