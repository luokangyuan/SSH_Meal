package com.luo.paymentutil;

import java.util.ResourceBundle;
/**
 * 获取配置文件
 * @author Administrator
 *
 */
public class ConfigInfo {
	private static ResourceBundle cache = null;
	static{
		try {
			cache = ResourceBundle.getBundle("merchantInfo");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 获取指定key  的值
	 * @param key
	 * @return
	 */
	public static String getValue(String key){
		return cache.getString(key);
	}

}
