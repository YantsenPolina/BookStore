import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Book } from 'src/app/common/book';
import { CartItem } from 'src/app/common/cart-item';
import { BookService } from 'src/app/services/book.service';
import { CartService } from 'src/app/services/cart.service';

@Component({
  selector: 'app-book-details',
  templateUrl: './book-details.component.html',
  styleUrls: ['./book-details.component.css']
})
export class BookDetailsComponent implements OnInit {

  book: Book = new Book();

  constructor(private bookService: BookService,
              private cartService: CartService,
              private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.handleBookDetails();
    })
  }

  handleBookDetails() {
    const bookId: number = +this.route.snapshot.paramMap.get('id');
    this.bookService.getBook(bookId).subscribe(
      data => {
        this.book = data;
      }
    )
  }

  addToCart() {
    console.log(`Adding to Cart: ${this.book.name}, ${this.book.unitPrice}`);
    const cartItem = new CartItem(this.book);
    this.cartService.addToCart(cartItem);
  }
}
