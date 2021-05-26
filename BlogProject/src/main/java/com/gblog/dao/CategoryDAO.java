package com.gblog.dao;

import java.util.List;

import com.gblog.dto.CategoryDTO;

public interface CategoryDAO {
	public void Create(CategoryDTO cdto) throws Exception; 	// 카테고리 생성
	
	public void Delete(Integer category_id) throws Exception; 	// 카테고리 삭제
	
	public List<CategoryDTO> CategoryList() throws Exception;	 // 카테고리 목록 
	
	public void Update(CategoryDTO cdto) throws Exception;	// 카테고리 수정
	
	public CategoryDTO Read(Integer category_id) throws Exception;		// 카테고리 정보
}
