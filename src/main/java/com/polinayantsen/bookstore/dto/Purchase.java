package com.polinayantsen.bookstore.dto;

import com.polinayantsen.bookstore.entity.Address;
import com.polinayantsen.bookstore.entity.Customer;
import com.polinayantsen.bookstore.entity.Order;
import com.polinayantsen.bookstore.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
