package com.water.vo;

import java.util.Date;

public class ViewData {   //要显示出来的表格类
	
	private String code;  //站点
	private String date; //时间
	private float v1; //埋深
	private float v2;  //温度
	private float v3;  //标高
	private float v4;   //分站电量
	private float v5;   //传感器电量
	private float v6;   //气压
	private String address; //地址
	
	public ViewData(){
	
	}

	

	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public ViewData(String code, String date, float v1, float v2, float v3, float v4, float v5, float v6,
			String address) {
		super();
		this.code = code;
		this.date = date;
		this.v1 = v1;
		this.v2 = v2;
		this.v3 = v3;
		this.v4 = v4;
		this.v5 = v5;
		this.v6 = v6;
		this.address = address;
	}



	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	

	public float getV1() {
		return v1;
	}

	public void setV1(float v1) {
		this.v1 = v1;
	}

	public float getV2() {
		return v2;
	}

	public void setV2(float v2) {
		this.v2 = v2;
	}

	public float getV3() {
		return v3;
	}

	public void setV3(float v3) {
		this.v3 = v3;
	}

	public float getV4() {
		return v4;
	}

	public void setV4(float v4) {
		this.v4 = v4;
	}

	public float getV5() {
		return v5;
	}

	public void setV5(float v5) {
		this.v5 = v5;
	}

	public float getV6() {
		return v6;
	}

	public void setV6(float v6) {
		this.v6 = v6;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}



	@Override
	public String toString() {
		return "ViewData [code=" + code + ", date=" + date + ", v1=" + v1 + ", v2=" + v2 + ", v3=" + v3 + ", v4=" + v4
				+ ", v5=" + v5 + ", v6=" + v6 + ", address=" + address + "]";
	}

	

}
