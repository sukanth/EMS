package com.room.EMS.Beans;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
public class User_bean {
	@Size(min = 3, max = 15, message = "date must be in the displayed format")
	String expenseDate;
	@NotNull
	double amount;
	@Size(min = 3, max = 50, message = "expense name must be between 3 to 50 characters long")
	String name;
	@Size(min = 3, max = 15, message = "date must be between 3 to 15 characters long")
	@DateTimeFormat(pattern="MM/DD/YYYY")
	String date;
	String statusCd;
	String username;
	@NotNull
	String applicableto;
	double gunda;
	double datta;
	double kiran;
	double vamsi;
	double uday;
	double chowdary;
	double vihar;
	String status;
	@Size(min = 3, max = 15, message = "Password must be between 3 to 15 characters long")
	String newpassword;
	@Size(min = 3, max = 15, message = "date must be in the displayed format")
	String fromdate;
	@Size(min = 3, max = 15, message = "date must be in the displayed format")
	String todate;

	int id;

	public String getExpenseDate() {
		return expenseDate;
	}

	public void setExpenseDate(String expenseDate) {
		this.expenseDate = expenseDate;
	}

	public String getStatusCd() {
		return statusCd;
	}

	public void setStatusCd(String statusCd) {
		this.statusCd = statusCd;
	}

	public String getFromdate() {
		return fromdate;
	}

	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}

	public String getTodate() {
		return todate;
	}

	public void setTodate(String todate) {
		this.todate = todate;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public int getId() {
		return id;
	}

	public double getVihar() {
		return vihar;
	}

	public void setVihar(double vihar) {
		this.vihar = vihar;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getGunda() {
		return gunda;
	}

	public void setGunda(double gunda) {
		this.gunda = gunda;
	}

	public double getDatta() {
		return datta;
	}

	public void setDatta(double datta) {
		this.datta = datta;
	}

	public double getKiran() {
		return kiran;
	}

	public void setKiran(double kiran) {
		this.kiran = kiran;
	}

	public double getVamsi() {
		return vamsi;
	}

	public void setVamsi(double vamsi) {
		this.vamsi = vamsi;
	}

	public double getUday() {
		return uday;
	}

	public void setUday(double uday) {
		this.uday = uday;
	}

	public double getChowdary() {
		return chowdary;
	}

	public void setChowdary(double chowdary) {
		this.chowdary = chowdary;
	}

	public String getApplicableto() {
		return applicableto;
	}

	public void setApplicableto(String applicableto) {
		this.applicableto = applicableto;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
