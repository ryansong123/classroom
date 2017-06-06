package com.util;

import java.util.List;

public class PageInfo {
	private Integer totlerecords;//
	private Integer totalPages;//
	private Integer currentPage;//
	private Integer pageSize;//
	private Integer start;//
	private Integer end;//
	private List datas;
	
	public Integer getTotlerecords() {
		return totlerecords;
	}
	public void setTotlerecords(Integer totlerecords) {
		this.totlerecords = totlerecords;
	}
	
	public Integer getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getEnd() {
		return end;
	}
	public void setEnd(Integer end) {
		this.end = end;
	}
	public List getDatas() {
		return datas;
	}
	public void setDatas(List datas) {
		this.datas = datas;
	}
	
}
