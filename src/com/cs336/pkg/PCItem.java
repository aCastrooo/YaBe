package com.cs336.pkg;

public class PCItem extends Item {

	private int CPU;
	private int Ram;
	private int HDD;
	private String Grafx;
	private String OS;
	private String name;
	private String condition;
	private String desc;
	
	public PCItem(int id, int cpu, int ram, int hdd, String gfx, String os,
			String email, String desc, String itemName, String condition) {
		super(id, email, itemName, desc, condition);
		this.condition = condition;
		CPU = cpu;
		Ram = ram;
		HDD = hdd;
		Grafx = gfx;
		OS = os;
		name = itemName;
		this.desc = desc;
	}
    
    public PCItem(int id, String itemName, String condition) {
        this(id, 0, 0, 0, "", "", "", "", itemName, condition);
    }
    
    public PCItem(int id, int cpu,String gfx,String os, String itemName,String condition)
    {
    	this(id,cpu,0,0,gfx,os, "", "",itemName,condition);
    }
	
	public int getCPU() {
		return CPU;
	}

	public String getName(){
		return name;
	}
	
	public String getDesc(){
		return desc;
	}
	
	public String getCond(){
		return condition;
	}
	
	public int getRAM() {
		return Ram;
	}


	public int getHDD()
	{
		return HDD;
	}
	
	public String getGfx(){
		return Grafx;
	}
	
	public String getOS(){
		return OS;
	}

}
