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
     <link rel="stylesheet" type="text/css" href="css/payment_login.css">
    <title>Document</title>
    <style>
        
    </style>
</head>
<body>
    <div class="contaner">
        <div class="contaner1">
            <img src="image/logo.jpg" alt="" height="100%">
        </div>
        <div class="contaner2">
            <h5 class="color">Please login to make your payment</h5>
        </div>
        <div class="contaner3">
            <div class="contaner4">
                <div class="contaner4-1">
                    <h2>Transaction Details</h2>
                </div>
                <div class="contaner4-2">
                    <div class="ncc">
                        <h2 class="flot">MKS product</h2>
                    </div>
                    <div class="float">
                        <h2 class="flot">NRP</h2>
                    </div>
                </div>
                <hr>
                <div class="contaner4-3">
                    <div class="ncc">
                        <h3 class="flot">Product Amount:</h3>
                    </div>
                    <div class="float">
                        <h3 class="flot">500.00</h3>
                    </div>
                </div>
                <div class="contaner4-3">
                    <div class="ncc">
                        <h3 class="flot">Tax Amount:</h3>
                    </div>
                    <div class="float">
                        <h3 class="flot">0.00</h3>
                    </div>
                </div>
                <div class="contaner4-3">
                    <div class="ncc">
                        <h3 class="flot">Service Charge:</h3>
                    </div>
                    <div class="float">
                        <h3 class="flot">0.00</h3>
                    </div>
                </div>
                <div class="contaner4-3">
                    <div class="ncc">
                        <h3 class="flot">Delivery Charge::</h3>
                    </div>
                    <div class="float">
                        <h3 class="flot">0.00</h3>
                    </div>
                </div>
                <hr>
                <div class="contaner4-2">
                    <div class="ncc">
                        <h2 class="flot">Total Amount:</h2>
                    </div>
                    <div class="float">
                        <h2 class="flot">500.00</h2>
                    </div>
                </div>
            </div>
            <div class="contaner5">
                <div class="contaner5-1">
                    <h2>Login</h2>
                </div>
                <form action="pay" method="post">
                    <div class="input-action">
                        <div class="input-box">
                            <label for="Id">Esewa Id*</label>
                            <input type="text" name="Esewa Id" id="esewa id"> 
                        </div>
                        <div class="input-box">
                            <label for="password">Password*</label>
                            <input type="text" name="Password" id="password"> 
                        </div>
                        <button type="submit" class="Button">LOGIN</button>
                        <button type="submit" class="Button1">CANCEL</button>
                    </div>
            </div>
        </div>
        <div class="contaner6">
            <div class="contaner9">
                <div class="contaner7">
                    <h6 class="test">
                        © eSewa Nepal, 2009-
                        <span>2022</span>
                        . All Right REseerved.
                    </h6>
                </div>
                <div class="contaner8">
                    <img src="image/esewa-logo.png" alt="" width="50%" height="50%">
                </div>
            </div>
        </div>
    </div>
</body>
</html>