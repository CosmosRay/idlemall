package com.idlemall.cosmos.util.page;

/**
 * <p>Title: PageComponentBean</p>
 */
public class PageComponentBean {

	/** member: type field type: String */
	private String type = "";

	/** member: name field type: String */
	private String name = "";

	/** member: id field type: String */
	private String id = "";

	/** member: onclick field type: String */
	private String onclick = "";

	/**
	 * constructor for class: PageComponentBean
	 */
	public PageComponentBean() {
		id = "";
		name = "";
		onclick = "";
		type = "";
	}

	public PageComponentBean(String id, String name, String onclick, String type) {
		this.id = id;
		this.name = name;
		this.onclick = onclick;
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOnclick() {
		return onclick;
	}

	public void setOnclick(String onclick) {
		this.onclick = onclick;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
