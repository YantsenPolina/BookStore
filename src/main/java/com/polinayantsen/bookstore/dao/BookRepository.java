package com.polinayantsen.bookstore.dao;

import com.polinayantsen.bookstore.entity.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.RequestParam;

@RepositoryRestResource
public interface BookRepository extends JpaRepository<Book, Long> {

    Page<Book> findByCategoryId(@RequestParam("id") Long id, Pageable pageable);
    Page<Book> findByNameContaining(@RequestParam("name") String name, Pageable pageable);
}
