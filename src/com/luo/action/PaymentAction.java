package com.luo.action;

import com.luo.paymentutil.ConfigInfo;
import com.luo.paymentutil.PaymentUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PaymentAction extends ActionSupport {

	private String orderid;//订单号
	private String amount;//支付金额
	private String pd_FrpId;//选择的支付银行
	
	private String messageType = "Buy"; // 请求命令,在线支付固定为Buy
	private String currency = "CNY"; //  货币单位
	private String productDesc = ""; //商品描述
	private String productCat = ""; // 商品种类
	private String productId = ""; // 商品ID
	private String addressFlag = "0"; // 需要填写送货信息 0：不需要 1:需要		
	private String sMctProperties = ""; // 商家扩展信息
	private String pr_NeedResponse = "0"; // 应答机制
	
	
	public String getPr_NeedResponse() {
		return pr_NeedResponse;
	}
	public void setPr_NeedResponse(String pr_NeedResponse) {
		this.pr_NeedResponse = pr_NeedResponse;
	}
	public String getMessageType() {
		return messageType;
	}
	public void setMessageType(String messageType) {
		this.messageType = messageType;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductCat() {
		return productCat;
	}
	public void setProductCat(String productCat) {
		this.productCat = productCat;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getAddressFlag() {
		return addressFlag;
	}
	public void setAddressFlag(String addressFlag) {
		this.addressFlag = addressFlag;
	}
	public String getsMctProperties() {
		return sMctProperties;
	}
	public void setsMctProperties(String sMctProperties) {
		this.sMctProperties = sMctProperties;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPd_FrpId() {
		return pd_FrpId;
	}
	public void setPd_FrpId(String pd_FrpId) {
		this.pd_FrpId = pd_FrpId;
	}
	private String p1_MerId;
	private String keyValue;
	private String merchantCallbackURL;
	private String md5mac;
	public void setMd5mac(String md5mac) {
		this.md5mac = md5mac;
	}
	public String getMd5mac() {
		return md5mac;
	}
	
	
	public String getP1_MerId() {
		return p1_MerId;
	}
	public void setP1_MerId(String p1_MerId) {
		this.p1_MerId = p1_MerId;
	}
	public String getKeyValue() {
		return keyValue;
	}
	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}
	public String getMerchantCallbackURL() {
		return merchantCallbackURL;
	}
	public void setMerchantCallbackURL(String merchantCallbackURL) {
		this.merchantCallbackURL = merchantCallbackURL;
	}
	public String execute()throws Exception{
		p1_MerId = ConfigInfo.getValue("p1_MerId");
		
		String keyValue = ConfigInfo.getValue("keyValue");
		
		merchantCallbackURL = ConfigInfo.getValue("merchantCallbackURL");
		md5mac = PaymentUtil.buildHmac(messageType, p1_MerId, orderid, amount, currency, productId, productCat, productDesc, merchantCallbackURL, addressFlag, sMctProperties, pd_FrpId, pr_NeedResponse, keyValue);
	
		return "success";
	}
}
