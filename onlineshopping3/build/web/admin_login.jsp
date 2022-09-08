<% 
    if(session.getAttribute("name")!=null){
        response.sendRedirect("admin.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Admin Login</title>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'><link rel="stylesheet" href="./style.css">

    </head>
    <body>
        <%@ include file="header.jsp" %>
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
        <!-- partial:index.partial.html -->
        <div class="pt-5">
            <h1 class="text-center">Admin Login</h1>

            <div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">

                            <form action="AdminLogin" method="post" data-parsley-validate="" data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1"><input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <div class="form-group required">
                                    <lSabel for="username">Username / Email</lSabel>
                                    <input type="text" class="form-control text-lowercase" id="username" required="required" name="username" value="">
                                </div>                    
                                <div class="form-group required">
                                    <lSabel for="password">
                                        <!--                                        <label class="d-flex flex-row align-items-center" for="password">-->
                                        Password  </lSabel>
                                    <!--                                        <a style="font-size: 12px" class="ml-auto border-link small-xl" href="forgotPassword.jsp">Forgot Password?</a></label>-->
                                    <input type="password" class="form-control" required="required" id="password" name="password" value="">
                                </div>
                                <div class="form-group mt-4 mb-4">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="remember-me" name="remember-me" data-parsley-multiple="remember-me">
                                        <label class="custom-control-label" for="remember-me">Remember me?</label>
                                    </div>
                                </div>
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Log In</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- partial -->

    </body>
    <%@ include file="footer.jsp" %>
     <script src="vendor/jquery/jquery.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">
        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if (status == "failed") {
                swal("Sorry", "Wrong username or password entered", "error");
            }
            else if (status == "invalidEmail") {
                swal("Sorry", "Username can not be blank", "error");
            }
            else if (status == "invalidPassword") {
                swal("Sorry", "Password can not be blank", "error");
            }
            </script>
</html>
