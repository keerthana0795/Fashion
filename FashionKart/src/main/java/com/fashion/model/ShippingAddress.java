package com.fashion.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@NotEmpty(message="Apartmentnum should not be empty")
	private String apartmentNumber;
	
	@NotEmpty(message="streetname should not be empty")
	private String streetName;
	
	@NotEmpty(message="city should not be empty")
	private String city;
	
	@NotEmpty(message="State should not be empty")
	private String State;
	
	@NotEmpty(message="country should not be empty")
	private String country;
	
	@NotEmpty(message="zipcode should not be empty")
	private String zipcode;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getApartmentNumber() {
		return apartmentNumber;
	}
	public void setApartmentNumber(String apartmentNumber) {
		this.apartmentNumber = apartmentNumber;
	}
	public String getStreetName() {
		return streetName;
	}
	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
	
}