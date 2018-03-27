<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Untitled Page</TITLE>
<!--去除超链接的下划线-->
<style type="text/css">
<!--
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	k
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}
-->
</style>

<STYLE type=text/css>
{
FONT-SIZE
:
 
12
px


}
.gridView {
	BORDER-RIGHT: #bad6ec 1px;
	BORDER-TOP: #bad6ec 1px;
	BORDER-LEFT: #bad6ec 1px;
	COLOR: #566984;
	BORDER-BOTTOM: #bad6ec 1px;
	FONT-FAMILY: Courier New
}

.gridViewHeader {
	BORDER-RIGHT: #bad6ec 1px solid;
	BORDER-TOP: #bad6ec 1px solid;
	BACKGROUND-IMAGE: url(../images/bg_th.gif);
	BORDER-LEFT: #bad6ec 1px solid;
	LINE-HEIGHT: 27px;
	BORDER-BOTTOM: #bad6ec 1px solid
}

.gridViewItem {
	BORDER-RIGHT: #bad6ec 1px solid;
	BORDER-TOP: #bad6ec 1px solid;
	BORDER-LEFT: #bad6ec 1px solid;
	LINE-HEIGHT: 32px;
	BORDER-BOTTOM: #bad6ec 1px solid;
	TEXT-ALIGN: center
}

.cmdField {
	BORDER-RIGHT: 0px;
	BORDER-TOP: 0px;
	BACKGROUND-IMAGE: url(../images/bg_rectbtn.png);
	OVERFLOW: hidden;
	BORDER-LEFT: 0px;
	WIDTH: 67px;
	COLOR: #364c6d;
	LINE-HEIGHT: 27px;
	BORDER-BOTTOM: 0px;
	BACKGROUND-REPEAT: repeat-x;
	HEIGHT: 27px;
	BACKGROUND-COLOR: transparent;
	TEXT-DECORATION: none
}

.buttonBlue {
	BORDER-RIGHT: 0px;
	BORDER-TOP: 0px;
	BACKGROUND-IMAGE: url(../images/bg_button_blue.gif);
	BORDER-LEFT: 0px;
	WIDTH: 78px;
	COLOR: white;
	BORDER-BOTTOM: 0px;
	BACKGROUND-REPEAT: no-repeat;
	HEIGHT: 21px
}
</STYLE>

</HEAD>
<BODY
	style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(../images/bg.gif); BACKGROUND-REPEAT: repeat-x">
	<SCRIPT src="EmployeeMgr.files/WebResource.axd" type=text/javascript></SCRIPT>
	<SCRIPT src="EmployeeMgr.files/ScriptResource.axd" type=text/javascript></SCRIPT>
	</SCRIPT>
	<DIV style=" z-index: 10">
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR
					style="BACKGROUND-IMAGE: url(../images/bg_header.gif); BACKGROUND-REPEAT: repeat-x"
					height=47>
					<TD width=10><SPAN
						style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN>
					</TD>
					<TD><SPAN
						style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><SPAN
						style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">修改用户
					</SPAN><SPAN
						style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN>
					</TD>
					<TD
						style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(../images/main_rc.gif)"
						width=10></TD>
				</TR>
				<TR>
					<TD style="BACKGROUND-IMAGE: url(../images/main_ls.gif)">&nbsp;</TD>
					<TD
						style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white"
						vAlign=top align=middle></TD>
					<TD style="BACKGROUND-IMAGE: url(../images/main_rs.gif)"></TD>
				</TR>
				<TR
					style="BACKGROUND-IMAGE: url(../images/main_fs.gif); BACKGROUND-REPEAT: repeat-x"
					height=10>
					<TD style="BACKGROUND-IMAGE: url(../images/main_lf.gif)"></TD>
					<TD style="BACKGROUND-IMAGE: url(../images/main_fs.gif)"></TD>
					<TD style="BACKGROUND-IMAGE: url(../images/main_rf.gif)"></TD>
				</TR>
			</TBODY>
		</TABLE>
		
	</DIV>
   <div style="position: absolute; top: 95px; left: 30px; z-index: 100; width: 1060px; height: 400px; ">
   <s:form action="doUpdateUser" method="post">
   
   <s:hidden name="users.id" value="%{#request.updateUser.id}"></s:hidden>
   <div style="position: absolute; width:35px; height:35px; top: 15px; left: 200px; z-index: 200; background:url(../image/user.png) ">
   </div>
   <div style="position: absolute; top: 15px; left: 250px; z-index: 200;">
    <s:textfield name="users.loginName" value="%{#request.updateUser.loginName}"><font color="black" style="font-family:华文楷体; font-size:24px">用户名:&nbsp;&nbsp;</font></s:textfield>
   </div>
   <div style="position: absolute; width:35px; height:35px; top: 60px; left: 200px; z-index: 200; background:url(../image/pwd.png) ">
   </div>
   <div style="position: absolute; top: 60px; left: 250px; z-index: 200;">
   <s:textfield name="users.loginPwd" value="%{#request.updateUser.loginPwd}"><font color="black" style="font-family:华文楷体; font-size:24px">密 &nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;</font></s:textfield>
   </div>
   <div  style="position: absolute; top: 105px; left: 250px; z-index: 200;">
    <s:textfield name="users.trueName" value="%{#request.updateUser.trueName}"><font color="black" style="font-family:华文楷体; font-size:20px">真实姓名:&nbsp;</font></s:textfield>
   </div>
    <div style="position: absolute; width:35px; height:35px; top: 103px; left: 200px; z-index: 200; background:url(../image/p.png) ">
   </div>
    <div  style="position: absolute; top: 150px; left: 250px; z-index: 200;">
   <s:textfield name="users.eamil" value="%{#request.updateUser.eamil}"><font color="black" style="font-family:华文楷体; font-size:24px">邮&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;</font></s:textfield>
   </div>
    <div style="position: absolute; width:35px; height:35px; top: 150px; left: 200px; z-index: 200; background:url(../image/p.png) ">
   </div>
   <div  style="position: absolute; top: 195px; left: 250px; z-index: 200;">
    <s:textfield name="users.phone" value="%{#request.updateUser.phone}"><font color="black" style="font-family:华文楷体; font-size:20px">电话号码:&nbsp;</font></s:textfield>
   </div>
    <div style="position: absolute; width:35px; height:35px; top: 193px; left: 200px; z-index: 200; background:url(../image/p.png) ">
   </div>

   
   
   
    <div style="position: absolute; width:35px; height:35px; top: 15px; left: 540px; z-index: 200; background:url(../image/user.png) ">
   </div>
   <div style="position: absolute; top: 15px; left: 590px; z-index: 200;">
    <s:textfield name="users.address" value="%{#request.updateUser.address}"><font color="black" style="font-family:华文楷体; font-size:20px">送餐地址:&nbsp;</font></s:textfield>
   </div>
   <div style="position: absolute; width:35px; height:35px; top: 60px; left: 540px; z-index: 200; background:url(../image/pwd.png) ">
   </div>
   <div style="position: absolute; top: 60px; left: 590px; z-index: 200;">
   <s:textfield name="users.qqnumber" value="%{#request.updateUser.qqnumber}"><font color="black" style="font-family:华文楷体; font-size:20px">QQ账号:&nbsp;&nbsp;&nbsp;</font></s:textfield>
   </div>
   <div  style="position: absolute; top: 105px; left: 590px; z-index: 540;">
   <s:textfield name="users.qqpws" value="%{#request.updateUser.qqpws}"><font color="black" style="font-family:华文楷体; font-size:20px">QQ密码:&nbsp;&nbsp;&nbsp;</font></s:textfield>
   </div>
    <div style="position: absolute; width:35px; height:35px; top: 103px; left: 540px; z-index: 200; background:url(../image/p.png) ">
   </div>
    <div  style="position: absolute; top: 150px; left: 590px; z-index: 200;">
   <s:textfield name="users.weibonumber" value="%{#request.updateUser.weibonumber}"><font color="black" style="font-family:华文楷体; font-size:20px">微博账号:&nbsp;</font></s:textfield>
   </div>
    <div style="position: absolute; width:35px; height:35px; top: 150px; left: 540px; z-index: 200; background:url(../image/p.png) ">
   </div>
   <div  style="position: absolute; top: 195px; left: 590px; z-index: 200;">
    <s:textfield name="users.weibopws" value="%{#request.updateUser.weibopws}"><font color="black" style="font-family:华文楷体; font-size:20px">微博密码:&nbsp;</font></s:textfield>
   </div>
    <div style="position: absolute; width:35px; height:35px; top: 193px; left:540px; z-index: 200; background:url(../image/p.png) ">
   </div>
   <div style="position: absolute; top: 280px; left: 500px;">
     <s:submit value="修改"></s:submit>
   </div>
   </s:form>
   </div>
</BODY>
</HTML>
