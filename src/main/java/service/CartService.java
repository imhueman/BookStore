package service;

import model.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import respository.CartRespository;

import java.util.List;

@Service

public class CartService {

	
	@Autowired
	CartRespository cartRespository;
	

	public List<Cart> getCartByUsername(String username){
	
		return cartRespository.findByUsername(username);
	}


	public void save(Cart newCart) {
		// TODO Auto-generated method stub
		cartRespository.save(newCart);
	}
}
