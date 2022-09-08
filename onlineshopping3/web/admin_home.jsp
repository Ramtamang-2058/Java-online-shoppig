<% 
    if(session.getAttribute("name")==null){
        response.sendRedirect("admin_login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--    <link rel="stylesheet" type="text/css" href="css/admin_home.css">-->
        <title>Admin</title>
        <link rel="ADMINt" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <style>


    </style>
</head>
<body>
    
    <%@ include file="admin_loginh.jsp" %>
    <div class="contaner3">
        <img class="myslides" src="image/next2-image.jpg" width="100%" height="100%">
        <img class="myslides" src="image/home1.jpg" width="100%" height="100%">
        <img class="myslides" src="image/next-image.jpg" width="100%" height="100%">

    </div>
    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("myslides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) {
                myIndex = 1
            }
            ;
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 9000);
        }
    </script>
</div>          
</body>
<%@ include file="footer.jsp" %>
</html>