package com.luo.entity;
/**
 * 分页实体类
 * @author Administrator
 *
 */
public class Pager {
	private int curPage;//待显示页
	private int perPageRows;//一页显示记录数
	private int rowCount;//记录总数
	private int pageCount;//总 页数
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPerPageRows() {
		return perPageRows;
	}
	public void setPerPageRows(int perPageRows) {
		this.perPageRows = perPageRows;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	public int getPageCount() {
		return (rowCount+perPageRows-1)/perPageRows;
	}

}
