package com.polinayantsen.bookstore.controller;

import com.polinayantsen.bookstore.dto.Purchase;
import com.polinayantsen.bookstore.dto.PurchaseResponse;
import com.polinayantsen.bookstore.service.CheckoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/checkout")
public class CheckoutController {

    @Autowired
    private CheckoutService checkoutService;

    @PostMapping("/purchase")
    public PurchaseResponse placeOrder(@RequestBody Purchase purchase) {
        return checkoutService.placeOrder(purchase);
    }
}
