<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.sql.*" %>
  
<html>
	<body>
    <title>VERIFY</title>
		<%
		String username=request.getParameter("USERNAME");
		String password=request.getParameter("PASSWORD");

    Connection conn=null;
  	ResultSet rs=null;
  	Statement stmt=null;
  	Class.forName("com.mysql.jdbc.Driver").newInstance();
  conn=
   DriverManager.getConnection("jdbc:mysql://localhost:3306/carwash","root","");
  	stmt=conn.createStatement();
    String query = "SELECT * FROM `adminpage` WHERE `username` = '"+username+"' AND `password` = '"+password+"'";
    rs=stmt.executeQuery(query);

    if(rs.next())
    {
      response.sendRedirect("adminpage.jsp");
    }
    else
    {
      	 response.sendRedirect("adminpage.html");
    }

		%>
	</body>
</html>
