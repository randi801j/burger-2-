package com.randyluc.BurgerTrackerhw.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.randyluc.BurgerTrackerhw.models.Burger;
import com.randyluc.BurgerTrackerhw.repositories.BurgerRes;

@Service
public class BurgerServ {
	private final BurgerRes burgerRepo;
	
	public BurgerServ(BurgerRes burgerRepo) {
		this.burgerRepo= burgerRepo;
	}
	
	public List<Burger>allburgers(){
		return burgerRepo.findAll();
	}
	public Burger addBurger(Burger burger) {
		return burgerRepo.save(burger);
	}
	public Burger findBurger(Long id) {
		Optional<Burger> optionalBurger = burgerRepo.findById (id);
		if(optionalBurger.isPresent()) {
			return optionalBurger.get();
		}
		return null;
	}
	public Burger updateBurger(Burger burger) {
		return burgerRepo.save(burger);
	}
	
}
