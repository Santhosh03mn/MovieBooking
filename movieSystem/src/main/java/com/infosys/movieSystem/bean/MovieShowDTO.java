package com.infosys.movieSystem.bean;


public class MovieShowDTO {
	
	private Integer showTimeId;
	private String showTimeName;
	private String movieId;
	private Integer royalSeat;
	private Integer premierSeat;
	private Integer royalBooked;
	private Integer premierBooked;
	private Double royalSeatPrice;
    private Double premierSeatPrice;
	public MovieShowDTO() {
		super();
		this.royalBooked = 0;
		this.premierBooked = 0;
		
	}
	
	

	public MovieShowDTO(Integer showTimeId, String showTimeName, String movieId, Integer royalSeat, Integer premierSeat,
			Integer royalBooked, Integer premierBooked, Double royalSeatPrice, Double premierSeatPrice) {
		super();
		this.showTimeId = showTimeId;
		this.showTimeName = showTimeName;
		this.movieId = movieId;
		this.royalSeat = royalSeat;
		this.premierSeat = premierSeat;
		this.royalBooked = royalBooked;
		this.premierBooked = premierBooked;
		this.royalSeatPrice = royalSeatPrice;
		this.premierSeatPrice = premierSeatPrice;
	}



	public MovieShowDTO(Integer showTimeId, String showTimeName, String movieId, Integer royalSeat, Integer premierSeat,
			Integer royalBooked, Integer premierBooked) {
		super();
		this.showTimeId = showTimeId;
		this.showTimeName = showTimeName;
		this.movieId = movieId;
		this.royalSeat = royalSeat;
		this.premierSeat = premierSeat;
		this.royalBooked = royalBooked;
		this.premierBooked = premierBooked;
	}
	

	public MovieShowDTO(String showTimeName, String movieId, Integer royalSeat, Integer premierSeat,
            Integer royalSeatsAvailable, Integer premierSeatsAvailable) {
        this.showTimeName = showTimeName;
        this.movieId = movieId;
        this.royalSeat = royalSeat;
        this.premierSeat = premierSeat;
        this.royalBooked = royalSeatsAvailable; // Adjust as needed
        this.premierBooked = premierSeatsAvailable; // Adjust as needed
    }
	
	public MovieShowDTO(String showTimeName, String movieId,Integer royalSeat, Integer premierSeat) {
		super();
		this.showTimeName = showTimeName;
		this.movieId = movieId;
		this.royalSeat = royalSeat;
		this.premierSeat = premierSeat;
		this.royalBooked = 0;
		this.premierBooked = 0;
	}
	
	public Integer getShowTimeId() {
		return showTimeId;
	}

	public void setShowTimeId(Integer showTimeId) {
		this.showTimeId = showTimeId;
	}

	public String getShowTimeName() {
		return showTimeName;
	}

	public void setShowTimeName(String showTimeName) {
		this.showTimeName = showTimeName;
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	
	
	public Integer getRoyalSeat() {
		return royalSeat;
	}

	public void setRoyalSeat(Integer royalSeat) {
		this.royalSeat = royalSeat;
	}

	public Integer getPremierSeat() {
		return premierSeat;
	}

	public void setPremierSeat(Integer premierSeat) {
		this.premierSeat = premierSeat;
	}

	public Integer getRoyalBooked() {
		return royalBooked;
	}

	public void setRoyalBooked(Integer royalBooked) {
		this.royalBooked = royalBooked;
	}

	public Integer getPremierBooked() {
		return premierBooked;
	}

	public void setPremierBooked(Integer premierBooked) {
		this.premierBooked = premierBooked;
	}

	public Double getRoyalSeatPrice() {
		return royalSeatPrice;
	}

	public void setRoyalSeatPrice(Double royalSeatPrice) {
		this.royalSeatPrice = royalSeatPrice;
	}

	public Double getPremierSeatPrice() {
		return premierSeatPrice;
	}

	public void setPremierSeatPrice(Double premierSeatPrice) {
		this.premierSeatPrice = premierSeatPrice;
	}



	@Override
	public String toString() {
		return "MovieShowDTO [showTimeId=" + showTimeId + ", showTimeName=" + showTimeName + ", movieId=" + movieId
				+ ", royalSeat=" + royalSeat + ", premierSeat=" + premierSeat + ", royalBooked=" + royalBooked
				+ ", premierBooked=" + premierBooked + ", royalSeatPrice=" + royalSeatPrice + ", premierSeatPrice="
				+ premierSeatPrice + "]";
	}
		
	
	
}
