<%@ page language="java" import="java.sql.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver").newInstance();	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwash","root","");
 Statement stmt = con.createStatement();
 String c_id;
 if(request.getParameter("approved")!= null)
 {
   c_id = request.getParameter("cid");                         
   stmt.executeUpdate("UPDATE `booking_details` SET `status` = 'Approved' WHERE c_id = '"+c_id+"' ");
   stmt.close();
   con.close();
   response.sendRedirect("admin_carwash_entry.jsp");
 }
 
 else if(request.getParameter("disapproved")!=null)
 {
   c_id = request.getParameter("cid");                         
   stmt.executeUpdate("UPDATE `booking_details` SET `status` = 'Not Approved Yet' WHERE c_id = '"+c_id+"' ");
   stmt.close();
   con.close();
   response.sendRedirect("admin_carwash_entry.jsp");
 } 
 else if(request.getParameter("delete")!=null)
 {
    c_id = request.getParameter("cid"); 
    stmt.executeUpdate("DELETE from `booking_details` WHERE c_id = '"+c_id+"' "); 
    stmt.close();
   con.close();
   response.sendRedirect("admin_carwash_entry.jsp");
 }
%>