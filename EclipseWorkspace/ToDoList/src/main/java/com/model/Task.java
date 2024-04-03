package com.model;

public class Task {
	private String id;
	private String desc;
	public String getid() {
		return id;
	}
	public void setTitle(String id) {
		this.id = id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Task(String id, String desc) {
		super();
		this.id = id;
		this.desc = desc;
	}
	
}
