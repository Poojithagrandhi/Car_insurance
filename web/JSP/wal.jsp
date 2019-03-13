<%-- 
    Document   : wallet1
    Created on : 3 Nov, 2018, 4:39:57 PM
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
        <title>WALLET</title>
    </head>
    <body>
        <div id="head" >
            <div id='innerl'>
            USER
            </div>
            <div id='inner'>
                <button><a href="wallet.jsp" style="float: left;">BACK</a></button>
                <button><a href="../index.jsp" style="float:left;">LOG OUT</a></button>
            </div>
        </div><br>
    <center>
        <%
            String uname=request.getParameter("uname");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
            PreparedStatement ps=con.prepareStatement("select balance from cust where username=? ");
            ps.setString(1, uname);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                %>
                <div>
                    <h1 style="color:#ff6600;"> YOU HAVE <%= rs.getString("balance") %> BALANCE IN YOUR ACCOUNT</h1>
                    <img src="../Images/9.png" height="300px" width="300px"/><br><br>
                    <form action="add.jsp?msg=<%= uname %>" method="post">
                    <input type="number" name="amt"/><br>
                    <input type="submit" value="ADD"/>
                    </form>
                    
                    
                </div>
                <%
            }
            %>
    </center>
    </body>
</html>
<style>
     body{
        background-image: url("../Images/3.png");
    }
    button
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 3px;
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
    #inner
    {
        float: right;
        height: 20px;
        width: 200px;
        margin-right: 50px;
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
</style>
