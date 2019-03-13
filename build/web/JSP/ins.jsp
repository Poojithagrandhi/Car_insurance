<%-- 
    Document   : ins
    Created on : 31 Oct, 2018, 10:12:14 PM
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
        <title>Insurance</title>
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
        </div><br><Br>
              <center>
                    <div id='bind'>
                        <div style="float: left;margin-right: 20px;">
                            <img src="../Images/8.jpg" height="400px" width="400px"/> 
                        </div>
                    <div id='form'><BR>
                        <h3>APPLY FOR YOUR INSURNACE HERE</h3>
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
                    <tr>
                        <th>
                            AMOUNT:
                        </th>
                        <td>
                            <input type="number" name='amt' required="true"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            AREA:
                        </th>
                        <td>
                            <input type="text" name='area' required="true"/>
                        </td>
                    </tr>
                    <tr style="margin-top: 20px;">
                    <center>
                        <td>
                            <input type="submit" value='APPLY' style="height: 40px;width: 150px;background-image: linear-gradient(#cc33ff,#ccccff);margin-top: 50px;margin-left: 50px;"/>
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
                            String amt=request.getParameter("amt");
                            String area=request.getParameter("area");
                            Class.forName("com.mysql.jdbc.Driver");
                             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "");
                             PreparedStatement ps1=con.prepareStatement("select password from cust where username=?");
                             ps1.setString(1, uname);
                             ResultSet rs=ps1.executeQuery();
                             while(rs.next())
                             {
                                 String p=rs.getString("password");
                                 if(p.equals(pwd))
                                 {
                                    
                             PreparedStatement ps=con.prepareStatement("insert into accident(amt,area,name) values(?,?,?)");
                             ps.setString(3, uname);
                             ps.setInt(1,Integer.parseInt( amt));
                             ps.setString(2, area);
                             int z=ps.executeUpdate();
                             if(z>0)
                             {
                                 %>
                                 <div>
                                     <h3>Successfully sent for verification!!!!!!!!!!!!</h3>
                                 </div>
                                 <%
                             }
                             else
                             {
                                 %>
                                 <div>
                                     <h3>Failed to apply!!!!!!!!!!!!</h3>
                                 </div>
                                 <%
                             }
                            }
                             
                             else
                             {
                                 %>
                                 <div>
                                     <h3>Enter proper password</h3>
                                 </div>
                                 <%    
                                     }
                             }
                             }
                            %>
                        </div>
                         </div>
                </center>
        </div><br>
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
    button
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 3px;
    }
    #form
    {
        width: 500px;
        height: 400px;
        float: left;
        background-image: radial-gradient(#ff6633,#ffcccc);
        border-radius: 100px;
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
    </body>
</html>
