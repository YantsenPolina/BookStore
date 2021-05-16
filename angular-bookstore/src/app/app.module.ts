import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { BookListComponent } from './components/book-list/book-list.component';
import { HttpClientModule } from '@angular/common/http';
import { BookService } from './services/book.service';

import { Routes, RouterModule } from '@angular/router';
import { BookCategoryMenuComponent } from './components/book-category-menu/book-category-menu.component';

const routes: Routes = [
  { path: 'category/:id/:name', component: BookListComponent},
  { path: 'category', component: BookListComponent},
  { path: 'books', component: BookListComponent},
  { path: '', redirectTo: '/books', pathMatch: 'full'},
  { path: '**', redirectTo: '/books', pathMatch: 'full'},
];

@NgModule({
  declarations: [
    AppComponent,
    BookListComponent,
    BookCategoryMenuComponent
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    HttpClientModule
  ],
  providers: [BookService],
  bootstrap: [AppComponent]
})
export class AppModule { }
