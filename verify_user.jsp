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
    String query = "SELECT * FROM `userpage` WHERE `username` = '"+username+"' AND `password` = '"+password+"'";
    rs=stmt.executeQuery(query);

    if(rs.next())
    {
      %>
        <form action="userpage.jsp" method="post">
            <input type="hidden" id="uid" name="uid" value="<%=rs.getInt("u_id")%>">
            
            </form><%
            session.setAttribute("id",rs.getInt("u_id"));
            response.sendRedirect("userpage.jsp");
      
    }
    else
    {       
      	 response.sendRedirect("userpage.html");
    }

		%>
	</body>
</html>
