<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="https://kit.fontawesome.com/3fb0f90864.js" crossorigin="anonymous"></script>
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        nav {
            display: flex;
            width: 100%;
            background: lightgrey;
            position: relative;
            justify-content: space-between;
            text-align: center;
            /*        padding: 15px 30px;*/
            padding-right: 15px;
            padding-left: 15px;
        }

        nav .logo {
            cursor: pointer;
        }

        nav ul {
            display: flex;
            list-style: none;
            margin: auto 0;
            display: inline-block;
            list-style-type: none;
        }

        nav ul li {
            margin: 0 2px;
        }

        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }

        nav a {
            background-image: linear-gradient(to right,
                black,
                black 50%,
                black);
            background-size: 200% 100%;
            background-position: -100%;
            display: inline-block;
            padding: 5px 0;
            position: relative;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            transition: all 0.3s ease-in-out;
            font-size: 20px;
        }

        nav a:before {
            content: '';
            background: white;
            display: block;
            position: absolute;
            bottom: -3px;
            left: 0;
            width: 0;
            height: 3px;
            transition: all 0.3s ease-in-out;
        }

        nav a:hover {
            background-position: 0;
            color: white;
        }

        nav a:hover::before {
            width: 100%;
        }

    </style>

    <body>
        <nav>
            <div class="logo">
                <img src="image/logo1.png" width="125px">
            </div>
            <!--            <div class="search_box">
                            <input type="search" placeholder="Search here">
                            <span class="fa fa-search"></span>
                        </div>-->
            <ul>
                <li><a href="index.jsp">Home</a></li>
<!--                <li><a href="">About Us</a></li>-->
                <li><a href="">Add Products</a></li>
                <li><a href="">View Products</a></li>
                <li><a href="">Orders</a></li>
                <li><a href="">Customers</a></li>
                <li><a href="admin_login.jsp">Log In</a></li>
            </ul>
        </nav>
    </body>

</html>
