import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Book } from '../common/book';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class BookService {

  private baseUrl = 'http://localhost:8080/api/books';

  constructor(private httpClient: HttpClient) { }

  getBookList(): Observable<Book[]> {
    return this.httpClient.get<GetResponse>(this.baseUrl).pipe(
      map(response => response._embedded.books)
    );
  }
}

interface GetResponse {
  _embedded: {
    books: Book[];
  }
}
