package com.model;

import java.sql.Timestamp;

/**
 * TBorrowlog entity. @author MyEclipse Persistence Tools
 */

public class TBorrowlog implements java.io.Serializable {

	// Fields

	private Integer id;
	private Timestamp timeTo;
	private Timestamp timeFrom;
	private String deleted;
	private String yongTu;
	private Integer classroomId;
	private String classroomName;
	private String classroomNo;
	private String status;
	private Integer userId;
	private String userName;
	// Constructors

	/** default constructor */
	public TBorrowlog() {
	}

	/** minimal constructor */
	public TBorrowlog(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public TBorrowlog(Integer id, Timestamp timeTo, Timestamp timeFrom,
			String deleted, String yongTu, Integer classroomId,
			String classroomName, String classroomNo) {
		this.id = id;
		this.timeTo = timeTo;
		this.timeFrom = timeFrom;
		this.deleted = deleted;
		this.yongTu = yongTu;
		this.classroomId = classroomId;
		this.classroomName = classroomName;
		this.classroomNo = classroomNo;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Timestamp getTimeTo() {
		return this.timeTo;
	}

	public void setTimeTo(Timestamp timeTo) {
		this.timeTo = timeTo;
	}

	public Timestamp getTimeFrom() {
		return this.timeFrom;
	}

	public void setTimeFrom(Timestamp timeFrom) {
		this.timeFrom = timeFrom;
	}

	public String getDeleted() {
		return this.deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public String getYongTu() {
		return this.yongTu;
	}

	public void setYongTu(String yongTu) {
		this.yongTu = yongTu;
	}

	public Integer getClassroomId() {
		return this.classroomId;
	}

	public void setClassroomId(Integer classroomId) {
		this.classroomId = classroomId;
	}

	public String getClassroomName() {
		return this.classroomName;
	}

	public void setClassroomName(String classroomName) {
		this.classroomName = classroomName;
	}

	public String getClassroomNo() {
		return this.classroomNo;
	}

	public void setClassroomNo(String classroomNo) {
		this.classroomNo = classroomNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}