package com.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="book")
public class Book {
	
	@Id
	@Column(name="book_id")
	private int bookId;
	
	@Column(name="book_name")
	private String bookName;
	
	@Column(name="publisher_id")
	private String publisherId;
	
	
	
	
	@OneToMany(targetEntity=Publisher.class,cascade=CascadeType.ALL)
	@JoinColumn(name="p_id",referencedColumnName="publisher_id")
	 private List<Publisher> publishers;




	public int getBookId() {
		return bookId;
	}




	public void setBookId(int bookId) {
		this.bookId = bookId;
	}




	public String getBookName() {
		return bookName;
	}




	public void setBookName(String bookName) {
		this.bookName = bookName;
	}




	public String getPublisherId() {
		return publisherId;
	}




	public void setPublisherId(String publisherId) {
		this.publisherId = publisherId;
	}




	public List<Publisher> getPublishers() {
		return publishers;
	}




	public void setPublishers(List<Publisher> publishers) {
		this.publishers = publishers;
	}



/*
	public List<Author> getAuthor() {
		return author;
	}




	public void setAuthor(List<Author> author) {
		this.author = author;
	}
	*/
	
	
	
	
	/*@OneToMany(targetEntity=Publisher.class,cascade=CascadeType.ALL)
	@JoinColumn(name="p_id",referencedColumnName="pId")
	List<Publisher> publishers;*/
	

}
