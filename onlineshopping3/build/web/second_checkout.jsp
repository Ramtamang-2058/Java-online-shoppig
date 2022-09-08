<% 
    if(session.getAttribute("name")==null){
        response.sendRedirect("login.jsp");
    }
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" type="text/css" href="css/second_checkout.css">
    <title>CHECKOUT</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <style>
       
    </style>
</head>
<body>
    <div class="Home">
       <div class="header">
            <div class="logo">
                <h1>MKS</h1>
            </div>
            <div class="searchbox">
                <input type="text" class="search-bar" placeholder="search">
                <div class="search">
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="box">
                <i class="fa fa-cart-arrow-down"></i>
            </div>
            <div class="offer">
                <h2 class="off">Rs. 500 Off on Rs. 5000</h2>
            </div>
       </div>
       <div class="content">
            <ul>
                <li><a href="clintpage.jsp">HOME</a></li>
                <li><a href="mycart.jsp">MY CART</a></li>
                <li><a href="my_orders.jsp">TRACK MY PRODUCT</a></li>
                <li><a href="#">WELCOME USER</a></li>
                <li><a href="onlineshopping.jsp">LOGOUT</a></li>
            </ul>
       </div>
        <div class="contaner">
        <div class="contaner5">
            <div class=Cart-Container>
                <div class="contaner-box">
                    <div class="icons">
                        <img src="image/cra.png" alt="" width="100%" height="100%">
                    </div>
                    <div class="name">
                        <p>Cradit Card</p>
                    </div>
                </div>
                <div class="contaner-box">
                    <div class="icons">
                        <a href="payment_login.jsp">
                        <img src="image/ese.png" alt="" width="100%" height="100%">
                    </div>
                    <div class="name">
                        <p>eSewa Wallet</p>
                    </div>
                    </a>
                </div>
                <div class="contaner-box">
                    <div class="icons">
                        <img src="image/ime.png" alt="" width="100%" height="100%">
                    </div>
                    <div class="name">
                        <p>IME pay</p>
                    </div>
                </div>
                <div class="contaner-box">
                    <div class="icons">
                        <a href="order_submitted.jsp">
                        <img src="image/cash.png" alt="" width="100%" height="100%">
                    </div>
                    <div class="name">
                       
                        <p>Cash On Delivery</p>
                        
                    </div>
                    </a>
                </div>
            </div>
            <div class=Cart-Container2>
                <div class="contaner7">
                    <h2 style="padding: 10px;">Order Summary</h2>
                    <div class="contaner8">
<%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/customer", "root", "");
         //here sonoo is database name, root is username and password  
                            Statement stmt= conn.createStatement();
                            String Id = request.getParameter("id");
                            ResultSet rs=stmt.executeQuery("Select * from product_info where id="+Id);
                            while (rs.next()) {

                        %>
                        <p>Subtotal (1 Items and shipping fee included):</p>


                        <p><%=rs.getInt(3)+69%></p>

                    </div>
                    <div class="contaner8">

                        <h4>Total Amount:</h4>
                         

                        <h2><%=rs.getInt(3)+69%></h2>
                        
                        <%}
                            conn.close();
                        %>
                    </div>


                </div>
            </div>

        </div>
    </div>           
</body>
</html>