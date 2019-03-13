<%-- 
    Document   : cust
    Created on : 9 Nov, 2018, 4:41:24 AM
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
        <title>ADMIN</title>
    </head>
    <body>
        <div id="head" >
            <div id='innerl'>
            CAR INSURANCE
            </div>
            <div style="float: right;">
                <button><a href="admin.jsp">LOG OUT</a></button>
        </div><br><br>
        <div id="menu">
                <ol>
                    
                    <li style="margin-left:  200px;"><a href="admin1.jsp">ADD EMPLOYEE</a></li>
                    <li><a href="emp.jsp">VIEW EMPLOYEES</a></li>
                    <li><a href="issue.jsp">ISSUE </a></li>
                    <li><a href="awal.jsp">WALLET </a></li>
                </ol>
            </div>
        <center>
            <div id="table">
        <h3>CUSTOMER DETAILS</h3>
        <%
            Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
         PreparedStatement ps=con.prepareStatement("select * from cust");
         ResultSet rs=ps.executeQuery();
         %>
         
              
         <table style="border: 2px solid #000000;background-color: #ffcccc">
               <tr>
                   <th style="padding: 5px;border:1px solid #000000;">NAME</th>
                   <th style="padding: 5px;border:1px solid #000000;">MODEL</th>
                   <th style="padding: 5px;border:1px solid #000000;">PRICE</th>
                   <th style="padding: 5px;border:1px solid #000000;">USERNAME</th>
                   <th style="padding: 5px;border:1px solid #000000;">PASSWORD</th>
                   <th style="padding: 5px;border:1px solid #000000;">MONTH</th>
                   <th style="padding: 5px;border:1px solid #000000;">YEAR</th>
                   <th style="padding: 5px;border:1px solid #000000;">BALANCE</th>
               </tr>
           <%
           while(rs.next())
           {
               %>
               <tr>
               <% 
               for(int i=2;i<=9;i++)
               {
                   
               %>
                
               <td style="padding: 5px;border:1px solid #000000;">
                   <%= rs.getString(i) %>
               </td>
               
               
               
               
               <%
               }
               %>
               </tr>
               <%
           }
           
%>
           </table>
           </center>
               </div>
    </body>
</html>
<style>
    #table
    {
        color: black;
        text-decoration: none;
    }
     li:hover{
         background-color: #ffccff;
        color: black;
    }
    li{
        border-radius: 10px;
        border: 2px solid white;
        list-style: none;
        text-align: center;
        background: #ff00cc;
        color: white;
        width: 250px;
        height: 30px;
        float: left;
        padding-top: 3px;
    }
    #menu{
        width: 100%;
        height: 60px;
        padding: 5px;
        margin: auto;
    }
    #form
    {
        margin-left: 400px;
        width: 500px;
        height: 400px;
        background-color: #cc66ff;
        border: 2px black solid;
        box-shadow: 5px 8px gray;
    }
    body
    {
        background-image: url(../Images/17.png);
    }
    button
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 3px;
        margin-right: 40px;
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