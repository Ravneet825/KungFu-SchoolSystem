package com.handler;

//Import required java libraries
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

import com.DAO.AttendanceDAO;
import com.DAO.ClassSessionDAO;
import com.VO.AttendanceVO;
import com.VO.ClassSessionVO;
import com.VO.StudentVO;

public class Attendance extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String message;

	public void init() throws ServletException
	{
		// Do required initialization
		message = "Hello World";
	}

	public void doGet(HttpServletRequest request,
			HttpServletResponse response)
					throws ServletException, IOException
	{

		StringBuffer requestURL = request.getRequestURL();
		System.out.println("******in servlet*********URL*"+requestURL);

		System.out.println("Before vo and dao objects");
		ClassSessionVO csvo=new ClassSessionVO();
		ClassSessionDAO csdao = new ClassSessionDAO();
		List<ClassSessionVO> ls1 = null;
		ls1=csdao.load(csvo);
		System.out.println("after Dao.load method");
		System.out.println(  "list is = "+ ls1);

		//HttpSession session=request.getSession();
		//session.setAttribute("classSession",ls1);
		request.setAttribute("levelList",ls1);
		RequestDispatcher view = request.getRequestDispatcher("Attendance.jsp");
		view.forward(request, response);
		//response.sendRedirect("Attendance.jsp");

		/*List<String> levelList = new ArrayList<String>();
		levelList.add("Begineer 10am - 12am");
		levelList.add("Intermediate 1pm - 3pm");
		levelList.add("Advanced 3pm - 6pm");
		request.setAttribute("levelList", levelList);*/


		String studentID = request.getParameter("studentID");
		String classSession = request.getParameter("classSession");
		//String classTime = request.getParameter("classTime");
		String attendanceDate = request.getParameter("attendanceDate");


		System.out.println("studentID"+studentID);
		System.out.println("classSession"+classSession);
		//System.out.println("classtime"+classTime);
		System.out.println("attendanceDate"+attendanceDate);
		ClassSessionVO obj1 =new ClassSessionVO();
		if(classSession != null && studentID != null && attendanceDate !=null ){
			StudentVO svo = new StudentVO();
			svo.setStudent_Number(studentID);

			AttendanceVO avo = new AttendanceVO();
			avo.setCsvo(classSession);
			avo.setStudent_Num(studentID);
			try{
				Date obj = new Date(attendanceDate);

				avo.setAttendance_date(obj);
			}
			catch(Exception e)
			{}


			AttendanceDAO adao = new AttendanceDAO();
			adao.insert(avo);
			message = "Attendance added successfully";
		}
		response.setContentType("text/html");
		//response.addHeader("message", message);
		request.setAttribute("message", message);


		//Actual logic goes here.
		// PrintWriter out = response.getWriter();
		// out.println("<h1>" + message + "</h1>");
	}

	public void destroy()
	{
		// do nothing.
	}
}