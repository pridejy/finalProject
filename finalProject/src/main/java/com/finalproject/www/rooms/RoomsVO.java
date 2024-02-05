package com.finalproject.www.rooms;

import java.time.LocalDate;

import com.finalproject.www.reservation.ReservationVO;

public class RoomsVO {
	private int room_id;
    private int room_size;
    private String room_type;
    private int capacity;
    private int amenity_id;
    private String amenity_name;
    private int bed_type_id;
    private String bed_type_description;
    private int occupancy_standard_id;
    private String occupancy_standard_description;
    private int additional_id;
    private String additional_description;
    private int price;
    private boolean is_reserved;
    private ReservationVO reservationVO;
    public RoomsVO() {
    }
	public int getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}	
	public int getRoom_size() {
		return room_size;
	}
	public void setRoom_size(int room_size) {
		this.room_size = room_size;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public int getAmenity_id() {
		return amenity_id;
	}
	public void setAmenity_id(int amenity_id) {
		this.amenity_id = amenity_id;
	}
	public String getAmenity_name() {
		return amenity_name;
	}
	public void setAmenity_name(String amenity_name) {
		this.amenity_name = amenity_name;
	}
	public int getBed_type_id() {
		return bed_type_id;
	}
	public void setBed_type_id(int bed_type_id) {
		this.bed_type_id = bed_type_id;
	}
	public String getBed_type_description() {
		return bed_type_description;
	}
	public void setBed_type_description(String bed_type_description) {
		this.bed_type_description = bed_type_description;
	}
	public int getOccupancy_standard_id() {
		return occupancy_standard_id;
	}
	public void setOccupancy_standard_id(int occupancy_standard_id) {
		this.occupancy_standard_id = occupancy_standard_id;
	}
	public String getOccupancy_standard_description() {
		return occupancy_standard_description;
	}
	public void setOccupancy_standard_description(String occupancy_standard_description) {
		this.occupancy_standard_description = occupancy_standard_description;
	}
	public int getAdditional_id() {
		return additional_id;
	}
	public void setAdditional_id(int additional_id) {
		this.additional_id = additional_id;
	}
	public String getAdditional_description() {
		return additional_description;
	}
	public void setAdditional_description(String additional_description) {
		this.additional_description = additional_description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public boolean isIs_reserved() {
		return is_reserved;
	}
	public void setIs_reserved(boolean is_reserved) {
		this.is_reserved = is_reserved;
	}
	//오버로딩
	public ReservationVO getReservationVO() {
	    if (reservationVO == null) {
	        reservationVO = new ReservationVO();
	    }
	    return reservationVO;
	}
	public void setReservationVO(ReservationVO reservationVO) {
		this.reservationVO = reservationVO;
	}
	public LocalDate getCheckin_date() {
        if (reservationVO != null) {
            return reservationVO.getCheckin_date();
        }
        return null;
    }

    public LocalDate getCheckout_date() {
        if (reservationVO != null) {
            return reservationVO.getCheckout_date();
        }
        return null;
    }

    public Integer getAdults() {
        if (reservationVO != null) {
            return reservationVO.getAdults();
        }
        return null;
    }

    public Integer getChild() {
        if (reservationVO != null) {
            return reservationVO.getChild();
        }
        return null;
    }
    public String getGuest() {
    	if(reservationVO != null) {
    		return reservationVO.getGuest();
    	}
    	return null;
    }
    public String Guest_phone() {
    	if(reservationVO != null) {
    		return reservationVO.getGuest_phone();
    	}
    	return null;
    }
    
}
