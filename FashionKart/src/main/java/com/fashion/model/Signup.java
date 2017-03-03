package com.fashion.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

@Entity
public class Signup implements Serializable 
{
	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer signupid;
	@Size(min=5, max=10, message="Your name should be between 5 - 10 characters.")
	private String first_name;
	@Min(value=5, message="Please insert at least 5 characters")
     private String last_name;
	@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	private String email;
	@NotNull(message="Please select a password")
	@Length(min=5, max=10, message="Password should be between 5 - 10 charactes")

	private String password;
	
	public Integer getSignupid() {
		return signupid;
	}
	public void setSignupid(Integer signupid) {
		this.signupid = signupid;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
