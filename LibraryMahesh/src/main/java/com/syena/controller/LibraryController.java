package com.syena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.syena.dao.LibraryDao;
import com.syena.model.Library;

@Controller
public class LibraryController {
	@Autowired
	LibraryDao dao;

	@RequestMapping(value = "/addBook", method = RequestMethod.POST)
	public String addBook(Library library) {
		
		dao.addBook(library);
		return "redirect:/viewBooks";	
	}
	@RequestMapping(value = "/editBook/updateBook", method = RequestMethod.POST)
	public String updateBook(Library library) {
		System.out.println("mahe");
		dao.updateBook(library);
		return "redirect:/viewBooks";	
	}
	@RequestMapping("/viewBooks")  
    public String viewemp(Model m){  
        List<Library> list=dao.getBooks();  
        m.addAttribute("list",list);
        return "viewBooks";  
    }
	@RequestMapping("/addBookjsp")
	public String addBook() {
	return "addBook";	
}
	@RequestMapping("/editBook/{id}")
	public String editBook(@PathVariable int id,Model model)
	{
		model.addAttribute("book",dao.editBook(id));
		return "editBookForm";
	}@RequestMapping("/deleteBook/{id}")
	public String deleteBook(@PathVariable int id)
	{
		dao.deleteBook(id);
		return "redirect:/viewBooks";
	}
	
}

