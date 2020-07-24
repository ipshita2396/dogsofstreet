package com.website.Dao;

import com.website.Model.Cart;

public interface CartDao {
	

    Cart getCartById (int cartId);

    void update(Cart cart);

}
