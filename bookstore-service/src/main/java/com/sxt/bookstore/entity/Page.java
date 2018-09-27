package com.sxt.bookstore.entity;

import java.util.List;

/**
 * 分页类
 * @author Q2665_yubiums
 */
public class Page<T> {
    /**
     *当前页
     */
    private int pageIndex;
    /**
     *每页条数
     */
    private int pageSize;
    /**
     *符合查询条件总条数
     */
    private Long totalCount;
    /**
     *符合查询条件的列表_注意这里是泛型
     */
    private List<T> pageData;
    /**
     *数据库起始记录指针
     */
    private int startRow;
    /**
     *总页数
     */
    private int totalPage;

    public Page(int pageIndex, int pageSize) {
        this.pageIndex = pageIndex <= 0 ? 1 : pageIndex;
        this.pageSize = pageSize <= 0 ? 10 : pageSize;

        startRow = (pageIndex-1) * pageSize;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public Long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Long totalCount) {
        this.totalCount = totalCount;
    }

    public List<T> getPageData() {
        return pageData;
    }

    public void setPageData(List<T> pageData) {
        this.pageData = pageData;
    }

    public int getStartRow() {
        return startRow;
    }

    public int getTotalPage() {
        totalPage = (int) Math.ceil(totalCount/Double.parseDouble(String.valueOf(pageSize)));
        return totalPage;
    }
}