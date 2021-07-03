package com.polinayantsen.bookstore.service;

import com.polinayantsen.bookstore.dto.Purchase;
import com.polinayantsen.bookstore.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
