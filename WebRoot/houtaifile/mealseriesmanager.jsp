<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>菜系管理页面</title>
  </head>
  
  <body>
  <s:iterator value="#request.mealseriesmanagerlist" var="series">
  ${series.seriesId} ${series.seriesName}
 
  </s:iterator>
        你好   
  </body>
</html>
