package de.nsattes.springtest;

public class SimplePojo {

	private Integer id;

	private String text;

	public Integer getId() {
		return id;
	}

	public SimplePojo() {
	}

	public SimplePojo(Integer id, String text) {
		this.id = id;
		this.text = text;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
