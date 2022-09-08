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
     <link rel="stylesheet" type="text/css" href="css/my_orders.css">
    <title>MY ORDERS</title>
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
       <div class="contaner1">
        <div class="contaner2">
            <h1 class="COLOR">MY ORDERS</h1>
        </div>
        <div class="contaner3">
            <div class=Cart-Container>
                 
                <div class=Header>
                    <h3 class=Heading>Product</h3>
                   
                </div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/customer", "root", "");
 //here sonoo is database name, root is username and password  
                    Statement stmt = con.createStatement();
                    String id = request.getParameter("id");
                    ResultSet rs = stmt.executeQuery("select * from my_orders" );
                    while (rs.next()) {
                %>
                <div class=Cart-Items>
                   
                    <div class=image-box>
                    <img src="image/<%=rs.getString("pimage")%>" style="height: 150px;"/>
                    </div>
                    <div class=about>
                    <h1 class=title><%=rs.getString(2)%></h1>
                    <h3 class=subtitle>Rs. <%=rs.getInt(3)%></h3>
                    </div>
                    
                    <div class=prices>
                        <div class=amount>Rs. <%=rs.getInt(3)%></div>
                         <form action="delete3?pimage=<%=rs.getString(1)%>" method="post">
                  <button class="button_content">Delete</button>
                  </form>
                    </div>
                         
                </div>
                     
                <hr>
             
                   <%
                }
                    con.close();
                %>
                </hr>
            </div>
        </div>
    </div>
       
    </div>           
</body>
</html>