<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>employee</title>
   
  </head>
  
  <body>
    OGNL:<br>
   <s:iterator value="#request.employees">
   	<s:property value="username"/> ,<s:property value="password"/>, <s:property value="gender"/><br/>
   </s:iterator>
    
    
    <br>
    JSTL:
  </body>
</html>
