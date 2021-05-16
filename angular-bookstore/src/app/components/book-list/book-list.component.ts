import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Book } from 'src/app/common/book';
import { BookService } from 'src/app/services/book.service';

@Component({
  selector: 'app-book-list',
  templateUrl: './book-list-grid.component.html',
  styleUrls: ['./book-list.component.css']
})
export class BookListComponent implements OnInit {

  books: Book[];
  categoryId: number;
  categoryName: string;
  searchMode: boolean;

  constructor(private bookService: BookService,
              private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.listBooks();
    });
  }

  listBooks() {
    this.searchMode = this.route.snapshot.paramMap.has('keyword');
    if (this.searchMode) {
      this.handleSearchBooks();
    } else {
      this.handleListBooks();
    }
  }

  handleListBooks() {
    const hasCategoryId: boolean = this.route.snapshot.paramMap.has('id');

    if (hasCategoryId) {
      this.categoryId = +this.route.snapshot.paramMap.get('id');
      this.categoryName = this.route.snapshot.paramMap.get('name');
    } else {
      this.categoryId = 1;
      this.categoryName = 'Fantasy';
    }

    this.bookService.getBookList(this.categoryId).subscribe(
      data => {
        this.books = data;
      }
    )
  }

  handleSearchBooks() {
    const keyword: string = this.route.snapshot.paramMap.get('keyword');
    this.bookService.searchBooks(keyword).subscribe(
      data => {
        this.books = data;
      }
    )
  }
}
