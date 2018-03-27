<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
</script>
<script>  
$(function(){  
    var t = $("#text_box");  
    $("#add").click(function(){       
        t.val(parseInt(t.val())+1)  
        setTotal();  
    })  
    $("#min").click(function(){  
        t.val(parseInt(t.val())-1)  
        setTotal();  
    })  
    function setTotal(){  
        $("#total").html((parseInt(t.val())*3.95).toFixed(2));  
    }  
    setTotal();  
})  
</script>   
    
    <title>My JSP 'ceshi.jsp' starting page</title>
  

  </head>
  
  <body>
 <p>单价：3.95</p>  
<input id="min" name="" type="button" value="-" />  
<input id="text_box" name="" type="text" value="4" />  
<input id="add" name="" type="button" value="+" />  
<p>总价：<label id="total"></label></p>  
  </body>
</html> --%>
