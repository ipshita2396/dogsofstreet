package com.website.Dao;

import com.website.Model.Cart;
import com.website.Model.CartItem;

public interface CartItemDao {
	  
	void addCartItem(CartItem cartItem);

	    void removeCartItem(CartItem cartItem);

	    void removeAllCartItems(Cart cart);

	    CartItem getCartItemByProductId (int productId);

}
