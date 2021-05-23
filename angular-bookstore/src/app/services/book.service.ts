import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Book } from '../common/book';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { BookCategory } from '../common/book-category';

@Injectable({
  providedIn: 'root'
})
export class BookService {
  private baseUrl = 'http://localhost:8080/api/books';
  private categoryUrl = 'http://localhost:8080/api/book-categories';

  constructor(private httpClient: HttpClient) { }

  getBookList(categoryId: number): Observable<Book[]> {
    const searchUrl = `${this.baseUrl}/search/findByCategoryId?id=${categoryId}`;
    return this.getBooks(searchUrl);
  }

  getBookListPaginate(page: number, pageSize: number, categoryId: number): Observable<GetResponseBooks> {
    const searchUrl = `${this.baseUrl}/search/findByCategoryId?id=${categoryId}`
      + `&page=${page}&size=${pageSize}`;
    return this.httpClient.get<GetResponseBooks>(searchUrl);
  }

  searchBooks(keyword: string): Observable<Book[]> {
    const searchUrl = `${this.baseUrl}/search/findByNameContaining?name=${keyword}`;
    return this.getBooks(searchUrl);
  }

  searchBooksPaginate(page: number, pageSize: number, keyword: string): Observable<GetResponseBooks> {
    const searchUrl = `${this.baseUrl}/search/findByNameContaining?name=${keyword}`
      + `&page=${page}&size=${pageSize}`;
    return this.httpClient.get<GetResponseBooks>(searchUrl);
  }

  private getBooks(searchUrl: string): Observable<Book[]> {
    return this.httpClient.get<GetResponseBooks>(searchUrl).pipe(
      map(response => response._embedded.books)
    );
  }

  getBook(bookId: number): Observable<Book> {
    const bookUrl = `${this.baseUrl}/${bookId}`;
    return this.httpClient.get<Book>(bookUrl);
  }

  getBookCategories(): Observable<BookCategory[]> {
    return this.httpClient.get<GetResponseBookCategory>(this.categoryUrl).pipe(
      map(response => response._embedded.bookCategory)
    );
  }
}

interface GetResponseBooks {
  _embedded: {
    books: Book[];
  }
  page: {
    size: number,
    totalElements: number,
    totalPages: number,
    number: number
  }
}

interface GetResponseBookCategory {
  _embedded: {
    bookCategory: BookCategory[];
  }
}
