package com.op.booktique.vo.book;

import lombok.Data;

@Data
public class CategoryVO {
	private int categoryId;			// 카테고리번호
	private String categoryName;	// 카테고리명
	private int parentId;			// 상위카테고리
}
