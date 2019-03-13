<%-- 
    Document   : admin1
    Created on : 9 Nov, 2018, 3:25:53 AM
    Author     : pooji
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
        </div><br>
        <div id="form">
            <center>
                <h1>ADD EMPLOYEE</h1><br>
            <form action="" method="post">
                <table>
                    <tr>
                        <th>
                            NAME:
                        </th>
                        <td>
                            <input type="text" name="name"/>
                        </td>
                    </tr>
                     <tr>
                        <th>
                            USERNAME:
                        </th>
                        <td>
                            <input type="text" name="uname"/>
                        </td>
                    </tr>
                     <tr>
                        <th>
                            PASSWORD:
                        </th>
                        <td>
                            <input type="password" name="pwd"/>
                        </td>
                    </tr>
                    <tr style="margin-left: 150px;">
                    <center>
                        <td >
                            <input type="submit" value="ADD" style="background-image: repeating-linear-gradient(#ff6666,#ffcccc);width: 100px;height: 40px;"/>
                        </td>
                    </center>
                    </tr>
                </table>
                
            </form>
                <img src="../Images/33.jpg" width="100px" height="100px" style="margin-top: 20px;"/>
                 <%
            if(request.getMethod().equalsIgnoreCase("post"))
            {
                String name=request.getParameter("name");
                String uname=request.getParameter("uname");
                String pwd=request.getParameter("pwd");
                Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
         PreparedStatement ps=con.prepareStatement("insert into employee(name,username,password) values(?,?,?)");
         ps.setString(1, name);
         ps.setString(2, uname);
         ps.setString(3, pwd);
               int i= ps.executeUpdate();
               if(i>0)
               {
                   %>
                   <div>
                       SUCCESSFULLY ADDED EMPLOYEE
                   </div>
                   <%
               }
               else
                   {
                   %>
                   <div>
                       FAILED TO ADD EMPLOYEE
                   </div>
                   <%
               }
            }
            %>
            </center>
        </div>
        
        <div id="menu">
                <ol>
                    
                    <li style="margin-left:  200px;"><a href="cust.jsp">VIEW CUSTOMERS</a></li>
                    <li><a href="emp.jsp">VIEW EMPLOYEES</a></li>
                    <li><a href="issue.jsp">ISSUE </a></li>
                    <li><a href="awal.jsp">WALLET </a></li>
                </ol>
            </div>
       
    </body>
</html>
<style>
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