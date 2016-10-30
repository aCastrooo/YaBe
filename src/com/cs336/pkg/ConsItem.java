package com.cs336.pkg;

public class ConsItem extends Item{

	private int id;
	private String version;
	private String Name;
	private String desc;
	private String condition;

	public ConsItem(int id, String email, String desc, String condition, String itemName, String version) {
		super(id, email, desc, itemName, condition);
		this.version = version;
		this.id = id;
		Name = itemName;
		this.desc = desc;
		this.condition = condition;
	}

	public ConsItem(int id, String condition, String itemName, String version ) {
        this(id, "", "", condition, itemName, version);
    }
	
	public int getId() {
		return id;
	}
	
	public String getCond(){
		return condition;
	}
	
	public String getName(){
		return Name;
	}
	
	public String getDesc(){
		return desc;
	}
	
	public String getVersion() {
		return version;
	}
	
	public void setVersion(String version){
		this.version = version;
	}
	
	

}
