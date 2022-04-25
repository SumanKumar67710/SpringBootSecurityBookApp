package com.incapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.incapp.model.Book;
import com.incapp.service.BookService;

@Controller
public class MyController {
	
	@Autowired
	BookService bookService;
	
	@ModelAttribute
	public void commonValue(Model m) {
		m.addAttribute("appName", "OPSKUBE's BOOK APP");
	}
	
	@RequestMapping(value = {"/","/home"})
	public String home(Model m) {
		List<Book> b=bookService.getAllBooks();
		m.addAttribute("books", b);
		return "index";
	}
	
	@RequestMapping("/adminpage")
	public String admin(Model m) {
		List<Book> b=bookService.getAllBooks();
		m.addAttribute("books", b);
		return "adminpage";
	}
	
	@RequestMapping("/search")
	public String search() {
		return "searchBook";
	}
	@RequestMapping("/searchBook")
	public String searchBook(String name, Model m ) {
		
		List<Book> b=bookService.getBookLike(name);
		if(b!=null) {
			m.addAttribute("books", b);
		}
		else {
			m.addAttribute("searchResult", "No Book Found!");
		}
		return "searchBook";
	}
	
	@RequestMapping("/newBook")
	public String newBook() {
		return "addBook";
	}
	@RequestMapping("/addBook")
	public String addBook(@ModelAttribute Book b, Model m ) {
		boolean r=bookService.addBook(b);
		if(r)
			m.addAttribute("insertResult", "Book Inserted Successfully!");
		else
			m.addAttribute("insertResult", "Book Insertion Failed!");
		return "addBook";
	}
	
	@RequestMapping("/update")
	public String update() {
		return "updateBook";
	}
	@RequestMapping("/updateBook")
	public String updateBook(String bname, @ModelAttribute Book b, Model m ) {
		String r=bookService.updateBook(bname,b);
		m.addAttribute("updateResult", r);
		return "updateBook";
	}
	
	@RequestMapping("/delete")
	public String delete() {
		return "deleteBook";
	}
	@RequestMapping("/deleteBook")
	public String deleteBook(String name, Model m) {
		boolean r=bookService.deleteBook(name);
		if(r)
			m.addAttribute("deleteResult", "Book Deleted Successfully!");
		else
			m.addAttribute("deleteResult", "No Book Found to Delete!");
		return "deleteBook";
	}
	
	@RequestMapping("/login")
	public  String login() {
		return "login";
	}
	
	@RequestMapping("/accessDenied")
	public  String accessDenied() {
		return "accessDenied";
	}
}
