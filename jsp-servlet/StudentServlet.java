package Web;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Database.Dao;
import Beans.*;;
@WebServlet("/")
public class StudentServlet extends HttpServlet {
	private Dao StudentDAO;
    public void init() {
    	StudentDAO = new Dao();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();
        try {
            switch (action) {   
                case "/insertlang":
                	insertLang(request, response);
                    break; 
                
                case "/insertcert":
                	insertCert(request, response);
                	break;
                default:
                	break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
   
    public void insertLang(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException {
        String rollno = request.getParameter("rollno"); String lang1 = request.getParameter("lang1"); 
        String lang2 = request.getParameter("lang2"); String lang3 = request.getParameter("lang3");
        String lang4 = request.getParameter("lang4"); String lang5 = request.getParameter("lang5");
        Languages newUser = new Languages(rollno,lang1,lang2,lang3,lang4,lang5);    
        PrintWriter pw=response.getWriter();
        if(lang1.equals("") && lang2.equals("") && lang3.equals("") && lang4.equals("") &&lang5.equals("")) {
        	pw.println("Cannot enter details into database as the entries are not validated");	
        	response.sendRedirect("fail.jsp");
        }
        else {
	        StudentDAO.insertLang(newUser);        
	        response.sendRedirect("languages_list.jsp");
    	}
    }
	
    public void insertCert(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException {
    	String rollno=request.getParameter("rollno");
    	String cert1=request.getParameter("cert1");String proof1=request.getParameter("proof1");
		String cert2=request.getParameter("cert2");String proof2=request.getParameter("proof2");
		String cert3=request.getParameter("cert3");String proof3=request.getParameter("proof3");
		String cert4=request.getParameter("cert4");String proof4=request.getParameter("proof4");
		String cert5=request.getParameter("cert5");String proof5=request.getParameter("proof5");
		Certificates newUser = new Certificates(rollno,cert1,proof1,cert2,proof2,cert3,proof3,cert4,proof4,cert5,proof5);
		PrintWriter pw=response.getWriter();
    	ArrayList<String> arr = new ArrayList<String>(10);
		arr.add(cert1);arr.add(proof1);arr.add(cert2);arr.add(proof2);arr.add(cert3);arr.add(proof3);
		arr.add(cert4);arr.add(proof4);arr.add(cert5);arr.add(proof5);
    	int a= checkValidityCertificates(arr);
    	if(a==0) {
    		pw.println("Cannot enter details into database as the entries are not validated");
    		response.sendRedirect("fail.jsp");
    	}
    	else {
    		StudentDAO.insertCert(newUser);
    		response.sendRedirect("certificates_list.jsp");
	     } 
    }
    
	 public int checkValidityCertificates(ArrayList<String> arr){
		 int i=0;
		 int cerc=0;
		 for(i=0;i<arr.size()-1;i=i+2) {
		     if(arr.get(i)!="") {
		         if(arr.get(i+1)==""){
			 			System.out.println("Enter "+arr.get(i)+" Certification Document's Google Drive Link...");
			 			return 0; 
			 		 }
		 	}
		 	else {
		 		if(arr.get(i+1)!="") {
		 			System.out.println("Enter Certification"+i+"Name First...");
		 			return 0;
		 		}
		 	}
		 	if(arr.get(i)!="" && arr.get(i+1)!="") {
		 		cerc=cerc+1;
		 	}
		 }
			 System.out.println("Successfull...You have entered "+cerc+" certificates totally.");
			 return 1;
	}
	 
    public void destroy(){
		
   	}
}
