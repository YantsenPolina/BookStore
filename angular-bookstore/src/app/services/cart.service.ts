import { Injectable } from '@angular/core';
import { BehaviorSubject, Subject } from 'rxjs';
import { CartItem } from '../common/cart-item';

@Injectable({
  providedIn: 'root'
})
export class CartService {

  cartItems: CartItem[] = [];
  totalPrice: Subject<number> = new BehaviorSubject<number>(0);
  totalQuantity: Subject<number> = new BehaviorSubject<number>(0);

  constructor() { }

  addToCart(cartItem: CartItem) {
    let alreadyExistsInCart: boolean = false;
    let existingCartItem: CartItem = undefined;

    if (this.cartItems.length > 0) {
      existingCartItem = this.cartItems.find(tempCartItem => tempCartItem.id === cartItem.id);

      alreadyExistsInCart = (existingCartItem != undefined);
    }

    if (alreadyExistsInCart) {
      existingCartItem.quantity++;
    } else {
      this.cartItems.push(cartItem);
    }

    this.computeCartTotals();
  }

  computeCartTotals() {
    let totalPriceValue: number = 0;
    let totalQuantityValue: number = 0;

    for (let cartItem of this.cartItems) {
      totalPriceValue += cartItem.quantity * cartItem.unitPrice
      totalQuantityValue += cartItem.quantity;
    }

    this.totalPrice.next(totalPriceValue);
    this.totalQuantity.next(totalQuantityValue);

    this.logCartData(totalPriceValue, totalQuantityValue);
  }

  logCartData(totalPriceValue: number, totalQuantityValue: number) {
    console.log(`Contents of the Cart:`);
    for (let cartItem of this.cartItems) {
      const subTotalPrice = cartItem.quantity * cartItem.unitPrice;
      console.log(`name: ${cartItem.name}, quantity: ${cartItem.quantity}, unitPrice: ${cartItem.unitPrice}, subTotalPrice: ${subTotalPrice}`);
    }
    console.log(`totalPrice: ${totalPriceValue.toFixed(2)}, totalQuantity: ${totalQuantityValue}`);
  }

  decrementQuantity(cartItem: CartItem) {
    cartItem.quantity--;
    if (cartItem.quantity === 0) {
      this.remove(cartItem);
    } else {
      this.computeCartTotals();
    }
  }

  remove(cartItem: CartItem) {
    const itemIndex = this.cartItems.findIndex(tempCartItem => tempCartItem.id === cartItem.id);
    if (itemIndex > -1) {
      this.cartItems.splice(itemIndex, 1);
      this.computeCartTotals();
    }
  }
}
