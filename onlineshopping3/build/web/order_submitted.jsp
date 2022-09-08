<% 
    if(session.getAttribute("name")==null){
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" type="text/css" href="css/order_submitted.css">
    <title>SUBMITTED</title>
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
            
        </div>
           <div class="contaner">
                <div class="contaner3">
                    <div class=Cart-Container>
                       
                       
                        <div class=Cart-Items>
                            <i class="fa fa-clock"></i>
                           
                            <h1>Thank you for your purchage!</h1><br><br>
                            <img src="image/tick.jpg" width="100px"><br>
                          
                        </div>
                        <div class="back">
                            <button><a href="clintpage.jsp">Back To Home Page</a></button>
                        </div>
                       
                    </div>

                </div>
                        
      </div>
    </div>
       
    </div>           
</body>
</html>