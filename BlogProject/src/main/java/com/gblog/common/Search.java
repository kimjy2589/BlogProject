package com.gblog.common;

public class Search extends Pagination{
	private String searchType;
	private String keyword;
	private int category_id;
	
	public String getSearchType() {
		return searchType;
	}
	
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	
	public String getKeyword() {
		return keyword;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id2) {
		this.category_id = category_id2;
	}
	
	
	
}
