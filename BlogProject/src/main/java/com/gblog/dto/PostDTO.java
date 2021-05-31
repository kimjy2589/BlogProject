package com.gblog.dto;

import java.util.Date;

public class PostDTO {
	private int post_id;
	private int category_id;
	private String post_subj;
	private String post_content;
	private Date post_reg;
	
	private String post_img;
	private String replyCnt;
	
	public PostDTO() {
	}

	public PostDTO(int post_id, int category_id, String post_subj, String post_content, Date post_reg) {
		super();
		this.post_id = post_id;
		this.category_id = category_id;
		this.post_subj = post_subj;
		this.post_content = post_content;
		this.post_reg = post_reg;
		
	}

	public int getPost_id() {
		return post_id;
	}

	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getPost_subj() {
		return post_subj;
	}

	public void setPost_subj(String post_subj) {
		this.post_subj = post_subj;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	public Date getPost_reg() {
		return post_reg;
	}

	public void setPost_reg(Date post_reg) {
		this.post_reg = post_reg;
	}

	public String getPost_img() {
		return post_img;
	}

	public void setPost_img(String post_img) {
		this.post_img = post_img;
	}

	public String getReplyCnt() {
		return replyCnt;
	}

	public void setReplyCnt(String replyCnt) {
		this.replyCnt = replyCnt;
	}

}
