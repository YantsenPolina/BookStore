package com.polinayantsen.bookstore.dao;

import com.polinayantsen.bookstore.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {
}
