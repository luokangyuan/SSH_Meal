<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>户注册页面</title>



<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{ background:#0FF;padding:0 0 0 0; margin:0px; width:1346px; height:600px; background:url(images/bcground.jpg)}
#my-form{margin:0 auto;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2); background:#C99;}
#comments{width:350px;height:100px;}
</style>

</head>
<body>

<center >
<div class="row" style="position:absolute; top:5px; left:335px; height:600px;"  >

  <div class="eightcol last"   >

 

    <form id="my-form" action="register" method="post" style="width:600px; background:url(images/522ae53376ca3.png)">

        <section name="第一步">

          <div><label>登陆账户:</label><input id="username" name="users.loginName" type="text"/></div>
          <div><label>登陆密码:</label><input id="pass" name="users.loginPwd" type="password"/></div>
          <div><label>确认密码:</label><input id="pass" name="password" type="password"/></div>
          <div><label>真实姓名:</label><input id="truename" name="users.trueName" type="text"/></div>
         
          <div><label>出生日期:</label><input name="date" class="datepicker" data-ideal="date" type="text" placeholder="月/日/年"/></div>
         <div><label>电子邮箱:</label><input id="email" name="users.eamil" data-ideal="required email" type="email"/></div>
        </section>

        <section name="第二步">
          <div><label>电话号码:</label><input id="tel" type="text" name="users.phone" /></div>
          <div><label>家庭住址:</label><input id="address" name="users.address" type="text"/></div>
          <div><label>QQ账号:</label><input id="qq" name="users.qqnumber" type="text"/></div>
          <div><label>QQ密码</label><input id="qqpw" name="users.qqpws" type="password"/></div>
          <div><label>微博账号:</label><input id="weibonumber" name="users.weibonumber"  type="text"/></div>
         <div><label>微博密码:</label><input id="weibopws" name="users.weibopws" type="password"/></div>
      
        </section>

   
      <div><hr/></div>

      <div>
        <button type="submit">注册</button>
        <button id="reset" type="button">重置</button>
      </div>
    </form>
  </div>

</div>


<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/jquery-ui.all.js"></script>
<script type="text/javascript" src="js/jquery.idealforms.js"></script>
<script type="text/javascript">
var options = {

	onFail: function(){
		alert("你还有"+ $myform.getInvalid().length +"项信息没有完成")
	},
	

	inputs: {
		'users.phone':{
			filters:'required  tel',
			},
		'users.address':{
		filters:'required  address',
		},
		'users.qqnumber':{
		filters:'required  qq',
		},
	    
	    'users.weibonumber':{
		filters:'required  weibonumber',
		},
	    
		'users.trueName':{
			filters:'required  truename',
			
			},
		'users.loginPwd': {
			filters: 'required pass',
		},
		'users.qqpws': {
			filters: 'required qqpw',
		},
		'users.weibopws': {
			filters: 'required weibopws',
		},
		'users.loginName': {
			filters: 'required username',
			data: {
			
			}
		},
		
		'comments': {
			filters: 'min max',
			data: { min: 50, max: 200 }
		},
		'states': {
			filters: 'exclude',
			data: { exclude: ['default'] },
			errors : {
				exclude: '选择国籍.'
			}
		},
		'langs[]': {
			filters: 'min max',
			data: { min: 2, max: 3 },
			errors: {
				min: 'Check at least <strong>2</strong> options.',
				max: 'No more than <strong>3</strong> options allowed.'
			}
		}
	}
	
};

var $myform = $('#my-form').idealforms(options).data('idealforms');

$('#reset').click(function(){
	$myform.reset().fresh().focusFirst()
});

$myform.focusFirst();
</script>

</div>
</center>
</body>
</html>