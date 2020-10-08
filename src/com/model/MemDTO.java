package com.model;

public class MemDTO {
	private String id;
	private String pw;
	private String tel;
	private String sex;
	public MemDTO(String id, String pw, String tel, String sex) {
		this.id = id;
		this.pw = pw;
		this.tel = tel;
		this.sex = sex;
	}
	public MemDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
}
