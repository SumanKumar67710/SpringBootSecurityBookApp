package com.incapp.service;

import java.util.List;

import com.incapp.model.Book;

public interface BookService {
	List<Book> getAllBooks() ;
	List<Book> getBookLike(String name);
	boolean addBook(Book book);
	String updateBook(String name,Book book);
	boolean deleteBook(String name);
}
