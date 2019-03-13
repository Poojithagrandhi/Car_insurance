<%-- 
    Document   : renew
    Created on : 30 Oct, 2018, 10:11:12 PM
    Author     : pooji
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/11.jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RENEW</title>
    </head>
    <body>
        <div id="head" >
            <div id='innerl'>
            USER
            </div>
            <div id='inner'>
                <button><a href="main.jsp" style="float: left;">BACK</a></button>
                <button><a href="../index.jsp" style="float:left;">LOG OUT</a></button>
            </div>
        </div><br>
        <center>
                    <div id='bind'>
                        <div style="float: left;margin-right: 20px;">
                            <img src="../Images/7.jpg" height="400px" width="400px"/> 
                        </div>
                    <div id='form'><BR>
                        <h3>RENEW YOUR INSURNACE HERE</h3>
                        <form action='' method="post">
                <table>
                    
                    <tr>
                        <th>
                            USERNAME:
                        </th>
                        <td>
                            <input type="text" name='uname' required="true"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            PASSWORD:
                        </th>
                        <td>
                            <input type="password" name='pwd' required="true"/>
                        </td>
                    </tr>
                    <tr style="margin-top: 20px;">
                    <center>
                        <td>
                            <input type="submit" value='RENEW' style="height: 40px;width: 150px;background-image: linear-gradient(#cc33ff,#ccccff);margin-top: 50px;margin-left: 50px;"/>
                        </td>
                    </center>
                    </tr>
                </table>
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
             {
                 
                 PreparedStatement ps1=con.prepareStatement("select year from cust1 where name=?");
                 ps1.setString(1, uname);
                 ResultSet rs1=ps1.executeQuery();
                 while(rs1.next())
                 {
                
                     int a=Integer.parseInt(rs1.getString("year"))+1;
                     
                     PreparedStatement ps2 = con.prepareStatement("update cust1 set year=? where name=?");
                     ps2.setInt(1, a);
                     ps2.setString(2, uname);
                    int z= ps2.executeUpdate();
                    if(z>0)
                    {
                        %>
                        <div>
                            <h3>Success</h3>
                        </div>
                        <%
                    }
                 }
             }
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
                        </div>
                </center>
    </body>
</html>
<style>
     body{
        background-image: url("../Images/3.png");
    }
    #bind
    {
        width: 80%;
        
    }
    #form
    {
        width: 400px;
        height: 350px;
        float: left;
        padding-top: 50px;
        margin-left: 150px;
        background-image: radial-gradient(#ff6633,#ffcccc);
        border-radius: 200px;
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
