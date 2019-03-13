<%-- 
    Document   : index
    Created on : 29 Oct, 2018, 8:24:54 PM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/11.jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSURANCE</title>
        
    </head>
    <body>
        <div id="head" >
            <div id='innerl'>
            CAR INSURANCE
            </div>
            <div id='inner'>
                contact 7803786484
            </div>
        </div><br>
    <center>
        <div id="login" >
            <form action="" method="post" >
               USERNAME: <input type="text" name="uname" />
               PASSWORD: <input type="password" name="pwd" />
               <input type="submit" value="LOGIN" id='logb'/>
            </form>
            <%
    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String uname=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
         PreparedStatement ps=con.prepareStatement("select * from cust where username=?");
         ps.setString(1, uname);
         ResultSet rs=ps.executeQuery();
         while(rs.next())
         {
             String x=rs.getString("password");
             if(x.equals(pwd))
                 response.sendRedirect("JSP/main.jsp");
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
        <marquee >
            DON'T HAVE AN ACCOUNT??.....REGISTER HERE!!!!!!
        </marquee><br>
        <button id='btn' ><a href="JSP/register.jsp"><font size='3'>REGISTER HERE</font></a></button><br><br>
        <div>
            <img src="Images/1.jpg" width="50%"/>
        </div>
    </center>
    </body>
</html>
<style>
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
    #inner
    {
        float: right;
        height: 20px;
        width: 100px;
        margin-right: 50px;
    }
    #logb
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 3px;
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
    marquee
    {
        color: #ffffff;
        font-weight: bolder;
        width: 100%;
        height: 20px;
        padding: 5px;
        background-color: #cc00ff;
    }
    #btn
    {
        height: 60px;
        width: 150px;
        border-radius: 10px;
        box-shadow: 2px 3px gray;
        background-image: linear-gradient(#ff0066,#ff9999);
    }
    #login
    {
        width: 100%;
        height: 30px;
        margin-bottom: 15px;
    }
    body
    {
        background-image: url("Images/17.png");
    }
</style>
