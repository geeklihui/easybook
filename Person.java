package org.lanqiao.entity;

public class Person {//实体类
	private int id ; 
	private String name;
	private boolean isChina ;
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
	public boolean isChina() {//boolean类型的属性  isXxx()等价于 getXxx();
		return isChina;
	}
	public void setChina(boolean isChina) {
		this.isChina = isChina;
	}
	
}
