<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title></title>
	
  </head>
  
  <body>
   <jsp:include page="/seindex.jsp"></jsp:include>
	<div style="position: absolute;left: 200px; top: 90px;">
	<img alt="" src="image/jieba.png">
	</div>
 <div style="margin-top: 220px;">
 
   <table width="1000" border="0" align="center">
  <tr>
    <td width="536" valign="top">
	<form action="paymentRequest" method="post" name="paymentform">
	
	<table width="100%" border="0">
      <tr>
        <td height="30" colspan="8"><table width="100%" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#A2E0FF">
          <tr>
            <td align="center" bgcolor="#F7FEFF"><h3>订单号：<INPUT TYPE="text" NAME="orderid"> 应付金额：￥<INPUT TYPE="text" value="${param.paymoney}" NAME="amount" size="6">元</h3></td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td colspan="8">&nbsp;</td>
        </tr>
      <tr>
        <td height="30" colspan="8" bgcolor="#F4F8FF"><span class="STYLE3">请您选择在线支付银行</span> </td>
        </tr>
      <tr>
        <td width="6%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET"></td>
        <td><img width="120" alt="" src="image/china_01.png"> </td>
        <td width="6%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET"></td>
         <td><img width="120" alt="工商银行" src="image/china_05.png"> </td>
        <td width="6%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET"></td>
         <td><img width="120" alt="农业银行" src="image/china_07.png"> </td>
       
      </tr>
      <tr>
       <td width="6%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET"> </td>
        <td><img width="120" alt="建设银行" src="image/china_010.png"> </td>
      <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET"></td>
        <td><img width="120" alt="" src="image/china_02.png"> </td>
      <td width="6%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET"></td>
        <td><img width="120" alt="" src="image/china_03.png"> </td>
     </tr>
      <tr>
       
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" > </td>
         <td><img width="120" alt="光大银行" src="image/china_06.png"> </td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BOCO-NET"></td>
        <td><img width="120" alt="交通银行" src="image/china_08.png"> </td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="SDB-NET"></td>
         <td><img width="120" alt="深圳发展银行" src="image/china_011.png"> </td>
      </tr>
      <tr>
       
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET"></td>
        <td><img width="120" alt="" src="image/china_02.png"> </td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET"></td>
         <td><img width="120" alt="上海浦东发展银行" src="image/china_09.png"> </td>
        <td ><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET"></td>
        <td><img width="120" alt="中信银行" src="image/china_012.png"> </td>
      </tr>
      
      <tr>
        <td colspan="8" align="center"><input type="submit" value=" 确认支付 " /></td>
        </tr>
    </table>
	</form>	</td>
    <td colspan="2" valign="top">
    <div class="divts">
    <table width="400" border="0" align="center" cellpadding="5" cellspacing="0">
      <tr>
        <td><span class="STYLE5"> 温馨提示</span></td>
      </tr>
      <tr>
        <td><ul><li> 建行客户需到柜面签约网上银行才能支付</li>
		<li>请关闭弹出窗口拦截功能</li>
		<li>务必使用IE5.0以上浏览器</li>
		<li>支付出错时勿按IE“后退”键</li>
		<li>使用信用卡支付，须先开通信用卡网上支付功能，可登陆网银或前往我行网点办理。</li>
        <li>请认真核对手机短信验证码或K宝屏幕显示内容，确认账单号和支付金额是否准确。</li>
        <li>如果您在支付过程中遇到程序无法安装或页面异常等错误，请下载并安装我行“网银助手”对您的系统进行设置及修复。 </li>
		</ul></td>
      </tr>
    </table>
    </div>
    <div id="blankmessage"></div>	</td>
  </tr>
  
</table>
</div>
 ${param.paymoney}${param.orderid}
  </body>
</html>
