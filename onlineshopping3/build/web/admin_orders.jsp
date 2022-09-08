<% 
    if(session.getAttribute("name")==null){
        response.sendRedirect("admin_login.jsp");
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
    <link rel="stylesheet" type="text/css" href="css/admin_orders.css">
    <title>ORDERS</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

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
       </div>
       <div class="content">
            <ul>
                <li><a href="admin_home.jsp">HOME</a></li>
                <li><a href="add_product.jsp">ADD PRODUCT</a></li>
                <li><a href="view_products.jsp">VIEW PRODUCTS</a></li>
                <li><a href="admin_orders.jsp">ORDERS</a></li>
                <li><a href="view_customers.jsp">CUSTOMER</a></li>
                 <li><a href="admin_login.jsp">LOG OUT</a></li>
            </ul>
       </div>
        <div class="contaner1">
            <div class="contaner2">
                <h1 class="COLOR">ORDERS</h1>
            </div>
        </div>
        <table>
             
            <tr>
               
                <th><h2>Product Name</h2></th>
              <th><h2>Product Price</h2></th>
              <th><h2>Product Image</h2></th>
              <th><h2>Buyer Name</h2></th>
              <th><h2>Buyer Address</h2></th>
              <th><h2>Buyer Contact</h2></th>
              <th class="delete_logo"><i class="fa fa-trash fa-2x"></i></i></th>
            </tr>
            <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/customer", "root", "");
 //here sonoo is database name, root is username and password  
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from my_orders");
                    while (rs.next()) {
                    
                %>
            <tr>
               
                <td><h3><%=rs.getString(2)%></h3></td>
              
              <td><h3><%=rs.getInt(3)%></h3></td>
              <td><img src="image/<%=rs.getString("pimage")%>" width="200px" height="200px"></td>
               <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/customer", "root", "");
 //here sonoo is database name, root is username and password  
                    Statement stm = conn.createStatement();
                    ResultSet rsq = stm.executeQuery("select * from signup where id="+1);
                    while (rsq.next()) {
                    
                %>
              <td><h3><%=rsq.getString(2)%></h3></td>
              <td><h3><%=rsq.getString(7)%></h3></td>
              <td><h3><%=rsq.getString(4)%></h3></td>
              <%
                }
                    conn.close();
                %>
              <td class="button_size">
                  <button class="button_content">Update</button>
                  <form action="delete2?SN=<%=rs.getString(1)%>" method="post">
                  <button class="button_content">Delete</button>
                  </form>
              </td>
            </tr>
            <tr>
            <%
                }
                    con.close();
                %>
          </table>
          
    </div>          
</body>
</html>