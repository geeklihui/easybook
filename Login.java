package org.lanqiao.entity;

public class Login {
	private int id ; 
	private String name;
	private String pwd ;
	
	public Login() {
	}
	public Login(int id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	public Login( String name, String pwd) {
		this.name = name;
		this.pwd = pwd;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	} 
	
}
