<html>
<head>
<title>CAR ENTERIES </title>
<style>

  @import url('https://fonts.googleapis.com/css2?family=Syncopate:wght@700&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Coda&family=Syncopate:wght@700&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Audiowide&display=swap');


  .btn0 {
    background-color:rgb(235, 238, 43);
    border-radius: 5px;
    color: rgb(44, 3, 3);
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    font-family:coda;
    float:right;
  }

  .btn1 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    font-family:syncopate;
    
  }
  .btn2 {
    background-color: royalblue;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    font-family:Syncopate ;

  }
  .btn3 {
    background-color:crimson;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    font-family:Syncopate ;
    margin-bottom: 40px;
  }
  

 body{ background-image: url("foodentries2.jpg");
       background-repeat: repeat-y; background-size:cover;
      }

h1 {font-family:'Audiowide', cursive; ; font-size: 60px; color: rgb(126, 12, 65);}
h3 {font-family:coda;margin-top: 30px;}
h2 {font-family:Syncopate;border-style: solid; }

</style>
 </head>

 <form action="booking_details.html" method="post">
 
 <input type="submit" value="USER_FORM" class="btn0" ><br>

 </form>
 
 <center>
  <h1>USER DETAILS</h1>
 </center>



<%@ page import="java.sql.*"%>
<% 


try
{
  Class.forName("com.mysql.jdbc.Driver").newInstance();

  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwash","root","");
  Statement stmt = con.createStatement();
 

  ResultSet rs=stmt.executeQuery("select * from booking_details, userpage where us_id=u_id and us_id=0");
  int i=((Integer)session.getAttribute("id")).intValue() ;
  while(rs.next()){
  %>
  <center>
  <h2>STATUS :<%=rs.getString("status")%></h2> 
  </center>
  
  <h3>NAME :<%=rs.getString("c_name")%></h3> 
  <h3>CITY :<%=rs.getString("city")%></h3>  
  <h3>EMAIL-ID:<%=rs.getString("email_id")%></h3> 
  <h3>CONTACT:<%=rs.getString("contact_number")%></h3> 
  <h3>DATE:<%=rs.getString("date")%></h3> 
  <h3>TIME:<%=rs.getString("time")%></h3> 
  <h3>TYPE_OF_SERVICE:<%=rs.getString("type_service")%></h3> 
  
  
  <body>
   
 
  

   
<%
}




}
catch(Exception e)
{
out.println("ERROR"+e);
}

%>


</body>
</html>