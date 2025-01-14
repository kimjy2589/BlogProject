package com.gblog.dto;

import java.util.Date;

public class GuestbookReplyDTO {
	
	private String guest_rp_id;
	private Integer guest_id;
	private String guest_rp_content;
	private Date guest_rp_date;
	
	public GuestbookReplyDTO() {}
	
	public Integer getGuest_id() {
		return guest_id;
	}
	public void setGuest_id(Integer guest_id) {
		this.guest_id = guest_id;
	}
	public String getGuest_rp_content() {
		return guest_rp_content;
	}
	public void setGuest_rp_content(String guest_rp_content) {
		this.guest_rp_content = guest_rp_content;
	}
	public Date getGuest_rp_date() {
		return guest_rp_date;
	}
	public void setGuest_rp_date(Date guest_rp_date) {
		this.guest_rp_date = guest_rp_date;
	}

	public String getGuest_rp_id() {
		return guest_rp_id;
	}

	public void setGuest_rp_id(String guest_rp_id) {
		this.guest_rp_id = guest_rp_id;
	}
	
	

}
