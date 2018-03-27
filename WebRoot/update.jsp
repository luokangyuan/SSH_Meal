<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>菜品修改 页</title>
    <script>
    //使用IE条件注释来判断是否IE6，通过判断userAgent不一定准确
    if (document.all) document.write('<!--[if lte IE 6]><script type="text/javascript">window.ie6= true<\/script><![endif]-->');
    // var ie6 = /msie 6/i.test(navigator.userAgent);//不推荐，有些系统的ie6 userAgent会是IE7或者IE8
    function change(picId,fileId) {
        var pic = document.getElementById(picId);
        var file = document.getElementById(fileId);
        if(window.FileReader){//chrome,firefox7+,opera,IE10,IE9，IE9也可以用滤镜来实现
           oFReader = new FileReader();
           oFReader.readAsDataURL(file.files[0]);
           oFReader.onload = function (oFREvent) {pic.src = oFREvent.target.result;};        
        }
        else if (document.all) {//IE8-
            file.select();
            var reallocalpath = document.selection.createRange().text//IE下获取实际的本地文件路径
            if (window.ie6) pic.src = reallocalpath; //IE6浏览器设置img的src为本地路径可以直接显示图片
            else { //非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现，IE10浏览器不支持滤镜，需要用FileReader来实现，所以注意判断FileReader先
                pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
                pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';//设置img的src为base64编码的透明图片，要不会显示红xx
            }
        }
        else if (file.files) {//firefox6-
            if (file.files.item(0)) {
                url = file.files.item(0).getAsDataURL();
                pic.src = url;
            }
        }
    }
</script>
  </head>  
  <body>
   
   <div style="background: url('../image/up.png'); width: 1090px; height: 480px;">
   <form name="form1" action="doUpdateMeal" method="post" enctype="multipart/form-data">
   <div style="position: absolute;left: 400px; top: 100px; ">
    <s:hidden name="meal.mealId" value="%{#request.updateMeal.mealId}"></s:hidden>
   		<s:textfield name="meal.mealName" value="%{#request.updateMeal.mealName}">菜品名称：</s:textfield><br><br>
   		<s:select list="%{#request.mealSeriesList}" value="%{request.updateMeal.mealseries.seriesId}" 
   		name="meal.mealseries.seriesId" listKey="seriesId" listValue="seriesName">菜品分类：</s:select><br><br>
   	   <s:textfield name="meal.mealSummarize" value="%{#request.updateMeal.mealSummarize}">菜品摘要：</s:textfield><br><br>
   	   <s:textfield name="meal.mealDescription" value="%{#request.updateMeal.mealDescription}">菜品介绍：</s:textfield><br><br>
   	   <s:textfield name="meal.mealPrice" value="%{#request.updateMeal.mealPrice}">菜品价格：</s:textfield><br><br>
   	   <s:hidden name="meal.mealImage" value="%{request.updateMeal.mealImage}"></s:hidden>
   </div>
   <div style="position: absolute; top: 110px; left: 50px;">
   <img width="225" height="140" src="../image/luo.png" id="pic1" ><br><br>
   <input type="file" name="doc" value="选择图片" id="file1" onchange="change('pic1','file1')">
   </div>
   <div style="position: absolute; top:330px; left: 450px;">
     <s:submit value="确定"></s:submit>
	</div>
   </form>
   </div>
   <!-- <form name="form1" action="doUpdateMeal" method="post" enctype="multipart/form-data"><table><tr>
 	 <div style="position: absolute;left: 400px; top: 100px; ">
       <s:hidden name="meal.mealId" value="%{#request.updateMeal.mealId}"></s:hidden>
   		<s:textfield name="meal.mealName" value="%{#request.updateMeal.mealName}">菜名：</s:textfield><br><br>
   		<s:select list="%{#request.mealSeriesList}" value="%{request.updateMeal.mealseries.seriesId}" 
   		name="meal.mealseries.seriesId" listKey="seriesId" listValue="seriesName">菜系：</s:select><br><br>
   	   <s:textfield name="meal.mealSummarize" value="%{#request.updateMeal.mealSummarize}">摘要：</s:textfield><br><br>
   	   <s:textfield name="meal.mealDescription" value="%{#request.updateMeal.mealDescription}">介绍：</s:textfield><br><br>
   	   <s:textfield name="meal.mealPrice" value="%{#request.updateMeal.mealPrice}">价格：</s:textfield><br><br>
   	   <s:hidden name="meal.mealImage" value="%{request.updateMeal.mealImage}"></s:hidden>
	</div>


	<div>
<img width="100" src="../image/user.png" id="pic1" ><br>

</div>
<td >
<input type="file" name="doc" id="file1" onchange="change('pic1','file1')">
</td>


</table>
<div>
<s:submit value="确定"></s:submit>
</div>
</form> -->
<!-- <s:form action="doUpdateMeal" method="post" enctype="multipart/form-data">
   	<table align="center">
   		<s:hidden name="meal.mealId" value="%{#request.updateMeal.mealId}"></s:hidden>
   		<s:textfield name="meal.mealName" value="%{#request.updateMeal.mealName}">菜名：</s:textfield><br>
   		<s:select list="%{#request.mealSeriesList}" value="%{request.updateMeal.mealseries.seriesId}" 
   		name="meal.mealseries.seriesId" listKey="seriesId" listValue="seriesName">菜系：</s:select><br>
   	   <s:textfield name="meal.mealSummarize" value="%{#request.updateMeal.mealSummarize}">摘要：</s:textfield><br>
   	   <s:textfield name="meal.mealDescription" value="%{#request.updateMeal.mealDescription}">介绍：</s:textfield><br>
   	   <s:textfield name="meal.mealPrice" value="%{#request.updateMeal.mealPrice}">价格：</s:textfield><br>
   	   <s:hidden name="meal.mealImage" value="%{request.updateMeal.mealImage}"></s:hidden>
   	   <s:file name="doc">图片：</s:file><br/>
   	   <s:submit value="确定"></s:submit>
   	</table>
   </s:form> -->
  
  </body>
</html>
