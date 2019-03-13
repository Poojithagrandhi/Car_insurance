<%-- 
    Document   : register
    Created on : 29 Oct, 2018, 9:12:29 PM
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
        <title>REGISTER</title>
    </head>
    <body>
        <div id='head'style="float: left;margin-bottom: 10px;">
            REGISTRATION
        </div><br><br>
        <div style="float: right;">
            <button><a href="../index.jsp">BACK</a></button>
        </div><br><br>
    <center>
        <div id='main'>
            <h2>REGISTRATION FORM</h2>
            <div id='inner'>
            <form action='' method="post">
                <table>
                    <tr>
                        <th>
                            NAME:
                        </th>
                        <td>
                            <input type="text" name='name' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            MODEL:
                        </th>
                        <td>
                            <input type="text" name='model' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            PRICE:
                        </th>
                        <td>
                            <input type="number" name='price' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            USERNAME:
                        </th>
                        <td>
                            <input type="text" name='uname' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            PASSWORD:
                        </th>
                        <td>
                            <input type="password" name='pwd' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            MONTH:
                        </th>
                        <td>
                            <input type="text" name='month' />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            YEAR:
                        </th>
                        <td>
                            <input type="number" name='year' />
                        </td>
                    </tr>
                    <tr style="margin-top: 20px;">
                    <center>
                        <td>
                            <input type="submit" value='REGISTER' style="height: 40px;width: 150px;background-image: linear-gradient(#cc33ff,#ccccff);margin-top: 50px;margin-left: 50px;"/>
                        </td>
                    </center>
                    </tr>
                </table>
            </form>
                <%
                    if(request.getMethod().equalsIgnoreCase("post"))
                    {
    Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
         String name=request.getParameter("name");
         String model=request.getParameter("model");
         int price=Integer.parseInt(request.getParameter("price"));
         String uname=request.getParameter("uname");
         String pwd=request.getParameter("pwd");
         String mon=request.getParameter("month");
         int year=Integer.parseInt(request.getParameter("year"));
         PreparedStatement ps=con.prepareStatement("insert into cust(name,model,price,username,password,mon,year) values(?,?,?,?,?,?,?)");
         ps.setString(1,name);
         ps.setString(2, model);
         ps.setInt(3, price);
         ps.setString(4, uname);
         ps.setString(5, pwd);
         ps.setString(6, mon);
         ps.setInt(7, year);
         int i=ps.executeUpdate();
         if(i>0)
         {
             %>
             <div>
                 <h3>Successfully registered!!!!!!!!!!</h3>
             </div>
             <%
         }
         else
         {
             %>
             <div>
                 <h3>registration failed</h3>
             </div>
             <%
         }
                    }
    %>
            </div>
        </div>
    </center>
    </body>
</html>
<style>
    body
    {
        background-image: url("../Images/2.png");
        
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
    button
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 3px;
    }
    #inner
    {
        height: 300px;
        width: 60%;
        padding: 10px;
        margin-top: 40px;
    }
    #main
    {
        height: 500px;
        width: 60%;
        background-image: linear-gradient(#cccccc,#ffffff);
        border: 2px solid black;
        border-radius: 50px 0px 50px 0px;
        box-shadow: 10px 10px;
        padding: 10px;
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
</style>
