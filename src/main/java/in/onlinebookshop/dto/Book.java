package in.onlinebookshop.dto;

import java.util.*;
import java.io.Serializable;

//DTO-> Data Transfer Object
public class Book implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String number;
	private String ISBN;
	private int nbid;
	private int old_bookid;
	private String book_name;
	private String author_name;
	private String hardcover_copies;
	private String online_versions;
	private String other_formats;
	private String cost;
	int flag=0;
	static {
		System.out.println("Book is loading...");
	}

	public Book() {
	Scanner scan=new Scanner(System.in);
		System.out.println("Book Object created...");
		System.out.println("Enter the ISBN number:");
		number=scan.nextLine();
	}
	
	punlic String getISBN(){
	ISBN isbn=new ISBN(number);
		ISBN=number;
		return ISBN;
	}
	
	public void setISBN(String ISBN){
		this.ISBN=ISBn;
		}
		
		
		public int getNbid() {
		return nbid;
	}

	public void setNbid(int nbid) {
		this.nbid = nbid;
	}
	
	public int getOldBookId() {
		return old_bookid;
	}

	public void setOldBookId(int old_bookid) {
		this.old_bookid = old_bookid;
	}


public String getBookName() {
		return book_name;
	}

	public void setBookname(String book_name) {
		this.book_name = book_name;
	}

	
	public String getBookName() {
		return book_name;
	}

	public void setBookname(String book_name) {
		this.book_name = book_name;
	}

	public String getAuthorName() {
		return author_name;
	}

	public void setAuthorName(String author_name) {
		this.author_name = author_name;
	}

	public String getHardcover_copies() {
		return city;
	}

	public void setHardcover_copies(String hardcover_copies) {
		this.hardcover_copies = hardcover_copies;
	}

	public String getOnlineVersions() {
		return online_versions;
	}

	public void setOnlineversions(String online-versions) {
		this.online_versions = online_versions;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}
	public Integer getOtherFormats() {
		return other_formats;
	}

	public void setOtherFormats(String other_formats) {
		this.other_formats = other_formats;
	}
	public Integer getDonorId() {
		return donor_id;
	}

	public void seDonorID(String donor_id) {
		this.donor_id = donor_id;
	}

	@Override
	public String toString() {
		return "Book [ISBN=" + ISBN + ", book_name=" + book_name + ", author-name=" + author_name + ", hardcover_copies=" + hardcover_copies + ", cost=" + cost
				+ "]";
	}

}
