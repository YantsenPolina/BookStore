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

  books: Book[] = [];
  categoryId: number = 1;
  previousCategoryId: number = 1;
  categoryName: string = 'Fantasy';
  searchMode: boolean = false;

  pageNumber: number = 1;
  pageSize: number = 5;
  totalElements: number = 0;

  previousKeyword; string = null;

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

    if (this.previousCategoryId != this.categoryId) {
      this.pageNumber = 1;
    }

    this.previousCategoryId = this.categoryId;
    console.log(`categoryId=${this.categoryId}, pageNumber=${this.pageNumber}`);

    this.bookService.getBookListPaginate(this.pageNumber - 1, this.pageSize, this.categoryId).subscribe(
      this.processResult()
    )
  }

  handleSearchBooks() {
    const keyword: string = this.route.snapshot.paramMap.get('keyword');

    if (this.previousKeyword != keyword) {
      this.pageNumber = 1;
    }

    this.previousKeyword = keyword;
    console.log(`keyword=${keyword}, pageNumber=${this.pageNumber}`);

    this.bookService.searchBooksPaginate(this.pageNumber - 1, this.pageSize, keyword).subscribe(
      this.processResult()
    );
  }

  processResult() {
    return data => {
        this.books = data._embedded.books;
        this.pageNumber = data.page.number + 1;
        this.pageSize = data.page.size;
        this.totalElements = data.page.totalElements;
    };
  }

  updatePageSize(pageSize: number) {
    this.pageSize = pageSize;
    this.pageNumber = 1;
    this.listBooks();
  }
}
