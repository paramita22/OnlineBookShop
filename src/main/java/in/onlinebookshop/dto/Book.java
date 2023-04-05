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
	private String authorname;
	private String hardcover_copies;
	private String hardcover;
	private String online_versions;
	private String other_formats;
	private String cost;
	private String Donor_id;
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

	public void setBookName(String book_name) {
		this.book_name = book_name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
	public String getISBN(){
		ISBN isbn=new ISBN(number);
			ISBN=number;
			return ISBN;
		}
		
		public void setISBN(String ISBN){
			this.ISBN=ISBN;
			}

	public String getAuthorname() {
		return authorname;
	}

	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}

	public String getHardcover() {
		return hardcover;
	}

	public void setHardcover(String hardcover) {
		this.hardcover = hardcover;
	}

	public String getDonor_id() {
		return Donor_id;
	}

	public void setDonor_id(String donor_id) {
		Donor_id = donor_id;
	}

	public String getAuthorName() {
		return author_name;
	}

	public void setAuthorName(String author_name) {
		this.author_name = author_name;
	}

	public String getHardcover_copies() {
		return hardcover_copies;
	}

	public void setHardcover_copies(String hardcover_copies) {
		this.hardcover_copies = hardcover_copies;
	}

	public String getOnlineVersions() {
		return online_versions;
	}

	public void setOnlineversions(String online_versions) {
		this.online_versions = online_versions;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getOtherFormats() {
		return other_formats;
	}
	@Override
	public String toString() {
		return "NewBook [ISBN=" + ISBN + ", book_name=" + book_name + ", author-name=" + author_name + ", hardcover_copies=" + hardcover_copies + ", cost=" + cost
				+ "]\tOldBook [ISBN=" + ISBN + ", book_name=\" + book_name + \", authorname=\" + authorname + \", hardcover=\" + hardcover + \", other_formats\"+other_formats+\"cost=\" + cost,donor_id+\"donor_id\"+\n"
				+ "				+ \"]";
	}

}
