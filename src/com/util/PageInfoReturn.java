package com.util;

import java.util.List;

public class PageInfoReturn {

	public static PageInfo getPageInfo(int count,List list,int pageSize,int currentPage ){
		PageInfo pageInfo = new PageInfo();
		int totalPages = (count + pageSize -1)/pageSize;
		pageInfo.setCurrentPage(currentPage);
		pageInfo.setDatas(list);
		pageInfo.setTotlerecords(count);
		pageInfo.setPageSize(pageSize);
		pageInfo.setTotalPages(totalPages);
		return pageInfo;
	}	
}
