package com.finalproject.www.reservation;

import java.sql.Timestamp;
import java.time.LocalDate;

import com.finalproject.www.rooms.RoomsVO;

public class ReservationVO {
	private int reservation_id;
	private String member_id;
	private int room_id;
	private LocalDate checkin_date;
	private LocalDate checkout_date;
	private Timestamp created_at;
	private int adults;
	private int child;
	private String guest;
	private String guest_phone;
	private String f_remark;
	private String room_type;
	private boolean is_reserved;
	private RoomsVO roomsVO;
	public ReservationVO(){
	}
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
	public LocalDate getCheckin_date() {
		return checkin_date;
	}
	public void setCheckin_date(LocalDate checkin_date) {
		this.checkin_date = checkin_date;
	}
	public LocalDate getCheckout_date() {
		return checkout_date;
	}
	public void setCheckout_date(LocalDate checkout_date) {
		this.checkout_date = checkout_date;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public int getAdults() {
		return adults;
	}
	public void setAdults(int adults) {
		this.adults = adults;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public String getGuest() {
		return guest;
	}
	public void setGuest(String guest) {
		this.guest = guest;
	}
	public String getGuest_phone() {
		return guest_phone;
	}
	public void setGuest_phone(String guest_phone) {
		this.guest_phone = guest_phone;
	}
	public String getF_remark() {
		return f_remark;
	}
	public void setF_remark(String f_remark) {
		this.f_remark = f_remark;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public boolean isIs_reserved() {
		return is_reserved;
	}
	public void setIs_reserved(boolean is_reserved) {
		this.is_reserved = is_reserved;
	}
	public RoomsVO getRoomsVO() {
		return roomsVO;
	}
	public void setRoomsVO(RoomsVO roomsVO) {
		this.roomsVO = roomsVO;
	}
	

}
