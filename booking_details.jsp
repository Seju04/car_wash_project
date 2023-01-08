<html>
<head>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Licorice&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Anton&display=swap');
   

    body
     {
      background-image: rgba(255, 255, 255,0.7); 
      margin: auto; padding: 40px;
      background-size:contain; background-position: center; background-repeat: no-repeat;
      background-color: rgb(71, 0, 58);
      }
    </style> 
 </head>
 

<%@ page import="java.sql.*"%>
<%
String name =request.getParameter("NAME");

String email=request.getParameter("EMAIL-ID");
String city=request.getParameter("SELECT CITY");
String number=request.getParameter("CONTACT NUMBER");
String date=request.getParameter("PICKUP DATE");
String time=request.getParameter("PICKUP TIMING");
String type_service=request.getParameter("SERVICE TYPE");

try
{
  Class.forName("com.mysql.jdbc.Driver").newInstance();

  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwash","root","");
  PreparedStatement ps = con.prepareStatement("INSERT INTO `booking_details` (`c_id`, `c_name`, `email_id`, `city`, `contact_number`, `date`, `time`, `type_service`, `status`, `us_id`) VALUES (default,?,?,?,?,?, ?,?,?,?)");
 Integer cc_id;
  cc_id =((Integer)session.getAttribute("id")).intValue() ;
  ps.setString(1,name);
  ps.setString(2,email);
  ps.setString(3,city);
 
  ps.setString(4,number);
  ps.setString(5,date);
  ps.setString(6,time);
  ps.setString(7,type_service);
  ps.setString(8,"Not Approved Yet");
  ps.setString(9,cc_id+"");

    int result = ps.executeUpdate();

      if(result!=0)
      {%> <center> <%
        out.println("Data is saved successfully");
 %> </center><%
      }
      else
      {
        out.println("Data is NOT saved");
      }

}
catch(Exception e)
{
out.println("ERROR"+e);

}
%>
<body>
  


 <center>
  <form class="" action="homepage.html" method="post">
    <button type="submit" values="back to home page" style="font-family: Anton;color:black;font-size:larger; border-radius: 16px; background-color:whitesmoke;">back to home page</button><br><br>
  </form>


<label style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 180px;color: whitesmoke;vertical-align: center;vertical-align: middle;"> THANK  YOU  VISIT   AGAIN  </label><br>
</center>




</body>
</html>