package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.infosys.movieSystem.bean.MovieUser;

public interface MovieUserRepository extends JpaRepository<MovieUser, String> {
	
	public List<MovieUser> findByRole(String role);

}
