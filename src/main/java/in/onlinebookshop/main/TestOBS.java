ackage in.onlinebookshop.main;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import in.onlinebookshop.controller.IBookController;
import in.onlinebookshop.dto.Book;
import in.onlinebookshop.factory.BookControllerFactory;


	@WebServlet("/testobs")
public class TestOBS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn = null;
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IBookController bookController = null;
		String status = null, ISBN = null, book_name = null, author_name = null, contact_no = null,address=null;
		Integer userid = null;
		User userRecord = null;
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebookshop","root","pp10");
			response.setContentType("text/html");
	
			PrintWriter out=response.getWriter();
			while (true) {
				BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

				out.println("1. CREATE");
				out.println("2. READ");
				out.println("3. UPDATE");
				out.println("4. DELETE");
				out.println("5. EXIT");
				out.print("Your Option :: [1,2,3,4,5]:: ");
				Integer option = Integer.parseInt(br.readLine());

				userController = UserControllerFactory.getUserController();

				switch (option) {
				case 1:

					User user= new User();
					user.setFName(user_fname);
					user.setLName(user_lname);
					user.setEmail(user_email);
					user.setContact(contact_no);
					user.setAddress(address);

					status = userController.save(user);
					if (status.equalsIgnoreCase("success")) {
						out.println("Record inserted succesfully...");
					} else if (status.equalsIgnoreCase("failure")) {
						out.println("Record insertion failed...");
					} else {
						out.println("Some problem occured...");
					}
					break;
				case 2:
					out.print("Enter the id:: ");
					id = Integer.parseInt(br.readLine());
					studentRecord = studentController.findById(id);
					if (studentRecord != null)
						System.out.println(studentRecord);
					else
						System.out.println("Record not available for the given id ::" + id);
					break;

				case 3:
					System.out.print("Enter the id of the record to be updated:: ");
					id = Integer.parseInt(br.readLine());
					studentRecord = studentController.findById(id);
					if (studentRecord != null) {

						Student newStudent = new Student();
						newStudent.setSid(id);
						
						System.out.print("StudentName ::[Old Name is :: " + studentRecord.getName() + "]:  ");
						String newName = br.readLine();
						if (newName == null || newName.equals("")) {
							newStudent.setName(studentRecord.getName());
						} else {
							newStudent.setName(newName);
						}

						System.out.print("StudentEmail ::[Old Email is :: " + studentRecord.getEmail() + "]: ");
						String newEmail = br.readLine();
						if (newEmail == null || newEmail.equals("")) {
							newStudent.setEmail(studentRecord.getEmail());
						} else {
							newStudent.setEmail(newEmail);
						}

						System.out.print("StudentCity ::[Old City is :: " + studentRecord.getCity() + "]:  ");
						String newCity = br.readLine();
						if (newCity == null || newCity.equals("")) {
							newStudent.setCity(studentRecord.getCity());
						} else {
							newStudent.setCity(newCity);
						}

						System.out.print("StudentCountry ::[Old Country is :: " + studentRecord.getCountry() + "]:  ");
						String newCountry = br.readLine();
						if (newCountry == null || newCountry.equals("")) {
							newStudent.setCountry(studentRecord.getCountry());
						} else {
							newStudent.setCountry(newCountry);
						}

						status = studentController.updateById(newStudent);
						if (status.equalsIgnoreCase("success")) {
							System.out.println("Record updated succesfully...");
						} else if (status.equalsIgnoreCase("failure")) {
							System.out.println("Record updation failed...");
						} else {
							System.out.println("Some problem occured...");
						}

					} else
						System.out.println("Record not available for the given id ::" + id);
					break;

				case 4:
					System.out.print("Enter the id:: ");
					id = Integer.parseInt(br.readLine());
					status = studentController.deleteById(id);
					if (status.equalsIgnoreCase("success")) {
						System.out.println("Record deleted succesfully...");
					} else if (status.equalsIgnoreCase("failure")) {
						System.out.println("Record deletion failed...");
					} else {
						System.out.println("Record not available for the given id to delete...");
					}
					break;
				case 5:
					System.out.println("Thanks for using the application");
					System.exit(0);

				default:
					System.out.println("Plz enter the option like 1,2,3,4,5 for operation");
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
