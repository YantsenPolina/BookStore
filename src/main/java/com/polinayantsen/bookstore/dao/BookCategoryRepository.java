package com.polinayantsen.bookstore.dao;

import com.polinayantsen.bookstore.entity.BookCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "bookCategory", path = "book-categories")
public interface BookCategoryRepository extends JpaRepository<BookCategory, Long> {
}
