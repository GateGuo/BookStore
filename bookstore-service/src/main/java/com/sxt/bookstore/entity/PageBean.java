package com.sxt.bookstore.entity;

import java.util.List;

public class PageBean {
    private long totalCount;  //总记录数
    private int totalPage;   //总页数
    private int size;        //每页记录条数
    private int currentPage; //当前页数
    private int beginNum;    //页码的起点
    private int endNum;      //页码的终点
    private List data;

    public List getData() {
        return data;
    }

    public void setData(List data) {
        this.data = data;
    }

    public long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(long totalCount) {
        this.totalCount = totalCount;
        totalPage=(int)totalCount/size;
        if(totalCount%size!=0){
            totalPage++;
        }
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
        if(this.totalPage<=10){
            this.beginNum=1;
            this.endNum=this.totalPage;
        }else {
            this.beginNum=currentPage-5;
            this.endNum=currentPage+4;
            if(this.beginNum<=0){
                this.beginNum=1;
                this.endNum=10;
            }
            if(this.endNum>=totalPage){
                this.beginNum=totalPage-size+1;
                this.endNum=totalPage;
            }
        }
    }

    public int getBeginNum() {
        return beginNum;
    }

    public void setBeginNum(int beginNum) {
        this.beginNum = beginNum;
    }

    public int getEndNum() {
        return endNum;
    }

    public void setEndNum(int endNum) {
        this.endNum = endNum;
    }


}
