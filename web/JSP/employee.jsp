<%-- 
    Document   : employee
    Created on : 9 Nov, 2018, 5:53:06 AM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/11.jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLOEE</title>
    </head>
    <body>
      <div id="head" >
            <div id='innerl'>
            CAR INSURANCE
            </div>
        </div><br>
        
    <center>
        <img src="../Images/33.jpg" width="200px"/>
        <div id="form"><br><br>
        <form action="" method="post">
            USERNAME:<input type="text" name="uname"/><br><br>
            PASSWORD:<input type="password" name="pwd"/><br><br>
            <input type="submit" value="LOGIN" ID="btn"/>
        </form>
      <%
    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String uname=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
         PreparedStatement ps=con.prepareStatement("select * from employee where username=?");
         ps.setString(1, uname);
         ResultSet rs=ps.executeQuery();
         while(rs.next())
         {
             String x=rs.getString("password");
             if(x.equals(pwd))
                 response.sendRedirect("emp1.jsp");
             else
             {
                 %>
                 <div>
                     PLEASE ENTER CORRECT PASSWORD
                 </div>
                 <%
             }
         }
    }
    %>
        </div>
    </center>
    </body>
</html>
<style>
     body
    {
        background-image: url("../Images/17.png");
    }
    #form
    {
        height: 200px;
        width: 400px;
        background-color: #cc66ff;
        border: 2px solid black;
        box-shadow: 5px 8px gray;
    }
    #head
    {
       font-family: cursive;
       font-weight: bolder;
       text-decoration: underline;
        width: 100%;
        height: 30px;
        padding: 10px;
        color: white;
        background-color: #3333ff;
    }
    #innerl
    {
        float: left;
        width: 500px;
    }
    a
    {
        text-decoration: none;
        font-weight: bold;
    }
    a:visited
    {
        color: white;
    }
    a:link
    {
        color: white;
    }
    a:active
    {
        color: white;
    }
    a:hover
    {
        color: black;
    }
    #btn
    {
        height: 60px;
        width: 150px;
        border-radius: 10px;
        box-shadow: 2px 3px gray;
        background-image: linear-gradient(#ff0066,#ff9999);
    }
   
</style>
