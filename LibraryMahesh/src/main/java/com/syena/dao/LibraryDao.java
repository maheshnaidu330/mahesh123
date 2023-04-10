package com.syena.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;






import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.syena.model.Library;

public class LibraryDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int addBook(Library library) {
		//"maheshBooks.nextval()"
		String sql = "insert into BooksMahesh (id,title,author,isbn) values (maheshBooks.nextval,?,?,?)";
		return template.update(sql,library.getTitle(), library.getAuthor(), library.getIsbn());
	}


	
	

	public List<Library> getBooks() {
		return template.query("select * from booksmahesh",new RowMapper<Library>(){  
	        public Library mapRow(ResultSet rs, int row) throws SQLException {  
	        	Library e=new Library();  
	            e.setId(rs.getInt(1));  
	            e.setAuthor(rs.getString(2));  
	            e.setTitle(rs.getString(3));  
	            e.setIsbn(rs.getString(4));  
	            return e;  
	        }  
	    });  
	}

	public Library editBook(int id) {
		 String sql="select * from booksmahesh where id=? ";  
		    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Library>(Library.class));  
		
	}

	public int deleteBook(int id) {
		 String sql="delete from booksmahesh where id="+id+"";  
		    return template.update(sql);  
	}

	public int updateBook(Library library) {
		 String sql="update booksmahesh set author=?,title=?,isbn=? where id=?";  
		    return template.update(sql,library.getAuthor(),library.getTitle(),library.getIsbn(),library.getId());  
	}

}
