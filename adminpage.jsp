<html>
<head>
  <title> ADMIN PAGE </title>
<style>

  @import url('https://fonts.googleapis.com/css2?family=Syncopate:wght@700&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Coda&family=Syncopate:wght@700&display=swap');

  .btn2 {
    background-color: rgb(203, 208, 223);
    border-radius: 5px;
    border-color: rgb(44, 43, 41);
    color: rgb(194, 32, 32);
    padding: 14px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    font-family:Syncopate ;

  }
  
 body{ background-image: url("admin1.jpg");
       background-repeat: no-repeat; background-size:contain;background-position: center; }

h3 {font-family:coda;}
h2 {font-family:Syncopate;}

</style>
</head>
<center>
  <form action="homepage.html" method="post">
    <input type="submit" value="LOGOUT" name="food"  style="border-color: darkcyan; color: rgb(230, 26, 111); padding: 10px; font-size: 20px;"><br><br>
    
    </form>
    
<form action="admin_carwash_entry.jsp" method="post">
  <input type="submit" value="View all booking" name="booking" class="btn2";">
</form>

 <form action="admin_otherdonations.jsp" method="post">
  <input type="submit" value="ADD PLACES" name="food" class="btn2";">
</center>




 </form>


 




</body>
</html>