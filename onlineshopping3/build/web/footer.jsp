<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="footer, address, phone, icons" />

    <title>Responsive Footer</title>

    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=OpenSans" rel="stylesheet" type="text/css">

    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <style>
        * {
            padding: 0;
            margin: 0;
        }


        /* The footer is fixed to the bottom of the page */

        footer {
            position: fixed;
            bottom: 0;
            background-color: lightgray;
        }

        @media (max-height:800px) {
            footer {
                position: static;
            }

            header {
                padding-top: 40px;
            }
        }


        .footer-distributed {
            background-color: lightgray;
            box-sizing: border-box;
            width: 100%;
            text-align: left;
            font: bold 16px sans-serif;
            padding: 25px 50px 25px 50px;
            margin-top: 20px;
        }

        .footer-distributed .footer-left,
        .footer-distributed .footer-center,
        .footer-distributed .footer-right {
            display: inline-block;
            vertical-align: top;
        }

        /* Footer left */

        .footer-distributed .footer-left {
            width: 30%;
        }

        .footer-distributed h3 {
            color: black;
            font: normal 36px 'Cookie', cursive;
            margin: 0;
        }

        /* The company logo */

        .footer-distributed .footer-left img {
            width: 30%;
        }

        .footer-distributed h3 span {
            color: #e0ac1c;
        }

        /* Footer links */

        .footer-distributed .footer-links {
            color: black;
            margin: 20px 0 12px;
        }

        .footer-distributed .footer-links a {
            display: inline-block;
            line-height: 1.8;
            text-decoration: none;
            color: inherit;
        }

        .footer-distributed .footer-company-name {
            color: grey;
            font-size: 14px;
            font-weight: normal;
            margin: 0;
        }

        /* Footer Center */

        .footer-distributed .footer-center {
            width: 35%;
        }


        .footer-distributed .footer-center i {
            background-color:black;
            color: #ffffff;
            font-size: 25px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            text-align: center;
            line-height: 42px;
            margin: 10px 15px;
            vertical-align: middle;
        }

        .footer-distributed .footer-center i.fa-envelope {
            font-size: 17px;
            line-height: 38px;
        }

        .footer-distributed .footer-center p {
            display: inline-block;
            color: black;
            vertical-align: middle;
            margin: 0;
        }

        .footer-distributed .footer-center p span {
            display: block;
            font-weight: normal;
            font-size: 14px;
            line-height: 2;
        }

        .footer-distributed .footer-center p a {
            color: #e0ac1c;
            text-decoration: none;
            ;
        }


        /* Footer Right */

        .footer-distributed .footer-right {
            width: 30%;
        }

        .footer-distributed .footer-company-about {
            line-height: 20px;
            color: grey;
            font-size: 13px;
            font-weight: normal;
            margin: 0;
        }

        .footer-distributed .footer-company-about span {
            display: block;
            color: black;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .footer-distributed .footer-icons {
            margin-top: 25px;
        }

        .footer-distributed .footer-icons a {
            display: inline-block;
            width: 35px;
            height: 35px;
            cursor: pointer;
            background-color: #33383b;
            border-radius: 2px;

            font-size: 20px;
            color: #ffffff;
            text-align: center;
            line-height: 35px;

            margin-right: 3px;
            margin-bottom: 5px;
        }
        a:hover{
            text-decoration: none;
        }

        /* Here is the code for Responsive Footer */
        /* You can remove below code if you don't want Footer to be responsive */


        @media (max-width: 880px) {

            .footer-distributed .footer-left,
            .footer-distributed .footer-center,
            .footer-distributed .footer-right {
                display: block;
                width: 100%;
                margin-bottom: 40px;
                text-align: center;
            }

            .footer-distributed .footer-center i {
                margin-left: 0;
            }

        }
    </style>
</head>


    <!-- The content of your page would go here. -->

    <footer class="footer-distributed">

        <div class="footer-left">
            <img src="image/logo1.png">
            <h3>About<span>Mobile Kinau</span></h3>
            <br>
            <p class="footer-company-name">© 2022 Mobile Kinau Pvt. Ltd.</p>
        </div>

        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                <p>Kathmandu, Nepal</p>
            </div>

            <div>
                <i class="fa fa-phone"></i>
                <p>+977-9863836303</p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p>support@mobilekinau.com</a></p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-company-about"> <br>
                <span>About the company</span>
               We provide you with wide range of smartphones delivered to your doorstep.
            </p>
            <div class="footer-icons">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-youtube"></i></a>
            </div>
        </div>
    </footer>
</body>

</html>