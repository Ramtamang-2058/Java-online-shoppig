<% 
    if(session.getAttribute("name")==null){
        response.sendRedirect("admin_login.jsp");
    }
%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--                 <link rel="stylesheet" type="text/css" href="css/signup.css">-->
        <title>Update User Info</title>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>

        </style>
    </head>

    <body>
        <%@ include file="admin_loginh.jsp" %>

        <div class="pt-5">
            <h1 class="text-center">Update User Info</h1>

            <div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                            <% String id = request.getParameter("id");
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer", "root", "");
                                Statement stmt = con.createStatement();
                                ResultSet rs = stmt.executeQuery("select * from signup where id=" + id);
                                rs.next();
                            %>
                            <form action=" update1" method="post" data-parsley-validate=""
                                  data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1">
                                <input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <div class="form-group required">
                                    <lSabel for="Id">Id</lSabel>
                                    <input type="number" class="form-control text-lowercase" id="id" required="" name="Id"
                                           value="<%=rs.getInt(1)%>">
                                </div>
                                <div class="form-group required">
                                    <lSabel for="Name">Full Name</lSabel>
                                    <input type="text" class="form-control" required="" id="name" name="Name" value="<%=rs.getString(2)%>">
                                </div>
                                <div class="form-group required">
                                    <lSabel for="Name">Email</lSabel>
                                    <input type="text" class="form-control" required="" id="email" name="Email" value="<%=rs.getString(3)%>">
                                </div>
                                <div class="form-group required">
                                    <lSabel for="Name">Delivery Location</lSabel>
                                    <input type="text" class="form-control" required="" id="location" name="Location"
                                           value="<%=rs.getString(7)%>">
                                </div>
                                <div class="form-group required">
                                    <lSabel for="Name">Phone Number</lSabel>
                                    <input type="text" class="form-control" required="" id="number1" name="Number"
                                           value="<%=rs.getString(4)%>">
                                </div>
                                <div class="form-group required">
                                    <lSabel for="Name">Username</lSabel>
                                    <input type="text" class="form-control" required="" id="username" name="Username"
                                           value="<%=rs.getString(5)%>">
                                </div>
                                <div class="form-group required">
                                    <lSabel for="password">
                                        Password </lSabel>
                                    <input type="password" class="form-control" required="" id="password" name="Password"
                                           value="<%=rs.getString(6)%>">
                                </div>
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Update User Info</button>
                                </div>
                            </form>
                            <% con.close();%>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>

</body>
<%@ include file="footer.jsp" %>

</html>