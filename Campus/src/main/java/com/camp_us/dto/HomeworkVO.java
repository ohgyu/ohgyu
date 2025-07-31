package com.camp_us.dto;

import java.util.Date;

public class HomeworkVO {

    private String hwNo;          // 과제 번호 (PK)
    private String hwName;        // 과제명
    private Date hwStartDate;     // 과제 시작일
    private Date hwEndDate;       // 과제 마감일
    private String hwDesc;        // 과제 상세 설명
    private String lecsId;        // 수강 아이디 (강의실 ID)

    // 기본 생성자
    public HomeworkVO() {}

    // 전체 필드 생성자
    public HomeworkVO(String hwNo, String hwName, Date hwStartDate, Date hwEndDate, String hwDesc, String lecsId) {
        this.hwNo = hwNo;
        this.hwName = hwName;
        this.hwStartDate = hwStartDate;
        this.hwEndDate = hwEndDate;
        this.hwDesc = hwDesc;
        this.lecsId = lecsId;
    }

    // Getters and Setters
    public String getHwNo() {
        return hwNo;
    }

    public void setHwNo(String hwNo) {
        this.hwNo = hwNo;
    }

    public String getHwName() {
        return hwName;
    }

    public void setHwName(String hwName) {
        this.hwName = hwName;
    }

    public Date getHwStartDate() {
        return hwStartDate;
    }

    public void setHwStartDate(Date hwStartDate) {
        this.hwStartDate = hwStartDate;
    }

    public Date getHwEndDate() {
        return hwEndDate;
    }

    public void setHwEndDate(Date hwEndDate) {
        this.hwEndDate = hwEndDate;
    }

    public String getHwDesc() {
        return hwDesc;
    }

    public void setHwDesc(String hwDesc) {
        this.hwDesc = hwDesc;
    }

    public String getLecsId() {
        return lecsId;
    }

    public void setLecsId(String lecsId) {
        this.lecsId = lecsId;
    }

    @Override
    public String toString() {
        return "HomeworkVO{" +
                "hwNo='" + hwNo + '\'' +
                ", hwName='" + hwName + '\'' +
                ", hwStartDate=" + hwStartDate +
                ", hwEndDate=" + hwEndDate +
                ", hwDesc='" + hwDesc + '\'' +
                ", lecsId='" + lecsId + '\'' +
                '}';
    }
}
