<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Customers</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">

    </head>

    <body>
        <%@ include file="admin_loginh.jsp" %>
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="text-center mb-4">All Customers</h4>
                        <div class="table-wrap">
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr>
                                        <th>ID</th>
                                        <th>Full Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Username</th>
                                        <th>Location</th>
                                        <th><i class="fa fa-trash fa-2x"></i></th>
                                    </tr>
                                </thead>
                                <% Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer", "root", "");
                                    //here sonoo is database name, root is username and password 
                                    Statement stmt = con.createStatement();
                                    ResultSet rs = stmt.executeQuery("select * from signup");
                                    while (rs.next()) {
                                %>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="scope">
                                            <%=rs.getString(1)%>
                                        </th>
                                        <td>
                                            <%=rs.getString(2)%>
                                        </td>
                                        <td>
                                            <%=rs.getString(3)%>
                                        </td>
                                        <td>
                                            <%=rs.getString(4)%>
                                        </td>
                                        <td>
                                            <%=rs.getString(5)%>
                                        </td>
                                        <td>
                                            <%=rs.getString(7)%>
                                        </td>
                                        <td><a href="update_user.jsp?id=<%=rs.getString("id")%>" class="btn
                                               btn-primary">Update</a>
                                               <br> <br>
                                               <form action="delete1?id=<%=rs.getString(1)%>" method="post">
                                                   <button class="btn btn-danger">Delete</button></form>
                                        </td>
                                    </tr>
                                </tbody>
                                <%
                                    }
                                    con.close();
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
    <%@ include file="footer.jsp" %>
</html>