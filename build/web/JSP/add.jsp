<%-- 
    Document   : add
    Created on : 8 Nov, 2018, 8:53:16 PM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
                    if(request.getMethod().equalsIgnoreCase("post"))
                    {
                        String uname =request.getParameter("msg");
                        Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
            PreparedStatement ps=con.prepareStatement("select balance from cust where username=? ");
             ps.setString(1, uname);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                    int amt=Integer.parseInt(request.getParameter("amt"))+Integer.parseInt(rs.getString("balance"));
                    
                    PreparedStatement ps1=con.prepareStatement("update cust set balance=? where username=?");
                    ps1.setString(1, Integer.toString(amt));
                    ps1.setString(2, uname);
                    int z=ps1.executeUpdate();
                    if(z>0)
                    {
                        %>
                        <h1> Successfully added money<br>
                            Current balance is <%= amt %>
                        </h1>
                        <div>
                            <img src="../Images/28.jpg" width="400px" height="400px"/>
                        </div>
                        <%
                    }
                    else
                    {
                        %>
                        <h1>Transaction failed</h1>
                         <div>
                            <img src="../Images/25.jpg" width="400px" height="400px"/>
                        </div>
                        <%
                    }
                    }
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