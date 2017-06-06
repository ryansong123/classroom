package com.model;

import java.sql.Timestamp;

/**
 * TClassroom entity. @author MyEclipse Persistence Tools
 */

public class TClassroom implements java.io.Serializable {

	// Fields

	private Integer id;
	private String className;
	private String classNo;
	private String flag;
	private String deleted;
	private Timestamp timeFrom;
	private Timestamp timeTo;
	private Integer userId;

	// Constructors

	/** default constructor */
	public TClassroom() {
	}

	/** minimal constructor */
	public TClassroom(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public TClassroom(Integer id, String className, String classNo,
			String flag, String deleted, Timestamp timeFrom, Timestamp timeTo,
			Integer userId) {
		this.id = id;
		this.className = className;
		this.classNo = classNo;
		this.flag = flag;
		this.deleted = deleted;
		this.timeFrom = timeFrom;
		this.timeTo = timeTo;
		this.userId = userId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getClassName() {
		return this.className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getClassNo() {
		return this.classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public String getFlag() {
		return this.flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getDeleted() {
		return this.deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public Timestamp getTimeFrom() {
		return this.timeFrom;
	}

	public void setTimeFrom(Timestamp timeFrom) {
		this.timeFrom = timeFrom;
	}

	public Timestamp getTimeTo() {
		return this.timeTo;
	}

	public void setTimeTo(Timestamp timeTo) {
		this.timeTo = timeTo;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}