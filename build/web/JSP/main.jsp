<%-- 
    Document   : main
    Created on : 29 Oct, 2018, 9:56:35 PM
    Author     : pooji
--%>

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
                <button><a href="../index.jsp">LOG OUT</a></button>
            </div>
        </div><br>
        <div id="plan">
            <div class="innerp">
                <center>
                    <h3>SILVER PLAN</h3>
                </center>
                <table>
                    <tr>
                        <th>
                            Monthly payment
                        </th>
                        <td>
                            5000/-
                        </td>
                    </tr>
                </table>
                FEATURES:<br>
                <ul>
                    <li>Can claim upto 10000 per year</li>
                    <li>Must pay for 3 years</li>
                    <li>Renewal for 1 year </li>
                </ul>
                <center><button style="height: 40px;width: 100px;" class="btn"><a href="apply.jsp?msg=silver">CLAIM</a></button><br><br>
                    <img src="../Images/4.jpg" height="100px" width="100px"/>
                </center>
            </div>
            <div class="innerp">
                <center>
                    <h3>GOLD PLAN</h3>
                </center>
                <table>
                    <tr>
                        <th>
                            Monthly payment
                        </th>
                        <td>
                            10000/-
                        </td>
                    </tr>
                </table>
                FEATURES:<br>
                <ul>
                    <li>Can claim upto 20000 per year</li>
                    <li>Must pay for 3 years</li>
                    <li>Renewal for 1 year </li>
                </ul>
                <center><button style="height: 40px;width: 100px;" class="btn"><a href="apply.jsp?msg=gold">CLAIM</a></button><br><br>
                    <img src="../Images/5.jpg" height="100px" width="100px"/>
                </center>
            </div>
            <div class="innerp">
                <center>
                    <h3>PLATINUM PLAN</h3>
                </center>
                <table>
                    <tr>
                        <th>
                            Monthly payment
                        </th>
                        <td>
                            25000/-
                        </td>
                    </tr>
                </table>
                FEATURES:<br>
                <ul>
                    <li>Can claim upto 100000 per year</li>
                    <li>Must pay for 3 years</li>
                    <li>Renewal for 1 year </li>
                </ul>
                <center><button style="height: 40px;width: 100px;" class="btn"><a href="apply.jsp?msg=platinum">CLAIM</a></button><br><br>
                    <img src="../Images/6.jpg" height="100px" width="100px"/>
                </center>
            </div>
            
        </div><br><br>
    <center>
        <button style="height: 80px;width: 200px;" class="btn"><a href="renew.jsp">CLICK HERE FOR RENEWAL</a></button>
        <button style="height: 80px;width: 200px;" class="btn"><a href="wallet.jsp">WALLET</a></button>
          <button style="height: 80px;width: 200px;" class="btn"><a href="ins.jsp">CLICK HERE FOR INSURANCE</a></button>
          <button style="height: 80px;width: 200px;" class="btn"><a href="pay.jsp">CLICK HERE TO PAY</a></button><br><br>
    </center>
    </body>
</html>
<style>
    body{
        background-image: url("../Images/3.png");
    }
    .btn
    {
        border-radius: 3px;
        background-image: linear-gradient(#9933ff,#ccccff);
    }
    #plan
    {
        width: 100%;
        height:400px;
        background-color: #ccccff;
    }
    .innerp
    {
        width: 31%;
        height: 90%;
        float: left;
        margin-top: 20px;
        margin-left: 2px;
        margin-right: 2px;
        background-color: #ff9999;
        padding-left: 20px;
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
        width: 100px;
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
    button
    {
        background-image: linear-gradient(#00cc33,#ccffcc);
        border-radius: 3px;
    }
</style>