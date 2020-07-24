package com.website.Dao;

import java.util.List;

import com.website.Model.Adoption;

public interface AdoptionDao {

	public void AddAdoption( Adoption adoption);
	public List<Adoption> getAllAdoption();
}
