<%-- 
    Document   : pay
    Created on : 9 Nov, 2018, 7:46:13 AM
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
        <title>USER</title>
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
           <div id='bind'>
                        
          <div id='form'><BR>
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
                            <input type="submit" value='PAY' style="height: 40px;width: 150px;background-image: linear-gradient(#cc33ff,#ccccff);margin-top: 50px;margin-left: 50px;"/>
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
                 
                 PreparedStatement ps1=con.prepareStatement("select * from cust1 where name=?");
                 ps1.setString(1, uname);
                 ResultSet rs1=ps1.executeQuery();
                 while(rs1.next())
                 {
                     int z=0;
                     String a=rs1.getString("ins");
                     if(a.equalsIgnoreCase("silver"))
                     {
                         z=5000;
                     }
                     else if(a.equalsIgnoreCase("gold"))
                     {
                         z=10000;
                     }
                     else if(a.equalsIgnoreCase("platinum"))
                     {
                         z=25000;
                     }
                     PreparedStatement ps2=con.prepareStatement("select * from admin");
                     ResultSet rs2=ps2.executeQuery();
                     while(rs2.next())
                     {
                        int r=Integer.parseInt(rs2.getString("bal"))+z;
                        PreparedStatement ps3=con.prepareStatement("update admin set bal=?");
                        ps3.setInt(1,r);
                        ps3.executeUpdate();
                     }
                     PreparedStatement ps4=con.prepareStatement("select * from cust");
                     ResultSet rs4=ps4.executeQuery();
                     while(rs4.next())
                     {
                        int r=Integer.parseInt(rs4.getString("balance"))-z;
                        PreparedStatement ps5=con.prepareStatement("update cust set balance=? where username=?");
                        ps5.setString(2, uname);
                        ps5.setInt(1,r);
                        int g=ps5.executeUpdate();
                        if(g>0)
                        {
                            %>
                            <h1>Payment success<br>Remaining balance is <%= r %></h1>
                            <%
                            break;
                        }
                        else
                          {
                            %>
                            <h1>Payment failed<br>Remaining balance is <%= r %></h1>
                            <%
                        }   
                     }
                     
                 }        
         }
    }
            }
                            %>
       </div>
          </div>
        </div><br><Br>
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
        margin-top: 100px;
        padding: 50px;
        width: 400px;
        height: 350px;
        float: left;
        padding-top: 50px;
        margin-left: 150px;
        background-image: radial-gradient(#ff6633,#ffcccc);
        border-radius: 300px;
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
