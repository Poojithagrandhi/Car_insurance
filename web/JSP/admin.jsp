<%-- 
    Document   : admin
    Created on : 9 Nov, 2018, 12:43:01 AM
    Author     : pooji
--%>

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
        </div><br>
        
    <center>
        <img src="../Images/32.jpg" width="200px"/>
        <div id="form"><br><br>
        <form action="" method="post">
            USERNAME:<input type="text" name="uname"/><br><br>
            PASSWORD:<input type="password" name="pwd"/><br><br>
            <input type="submit" value="LOGIN"id="btn"/>
        </form>
        <%
            if(request.getMethod().equalsIgnoreCase("post"))
            {
                String uname=request.getParameter("uname");
                String pwd=request.getParameter("pwd");
                if(uname.equals("admin"))
                {
                    if(pwd.equals("admin"))
                    {
                        response.sendRedirect("admin1.jsp");
                    }
                    else
                    {
                        %>
                        <div style="color: red">
                            ENTER CORRECT PASSWORD
                        </div>
                        <%
                    }
                }
                else
                {
                    %>
                      <div style="color: red">
                            ENTER CORRECT USERNAME
                        </div>
                    <%
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
        height: 30px;
        width: 80px;
        border-radius: 10px;
        box-shadow: 2px 3px gray;
        background-image: linear-gradient(#ff0066,#ff9999);
    }
   
</style>
