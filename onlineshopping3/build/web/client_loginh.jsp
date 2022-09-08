<!DOCTYPE html>
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
        nav .search_box{
            display: flex;
            margin: auto 0;
            height: 40px;
            line-height: 40px;
        }
        nav .search_box input{
            border: none;
            outline: none;
            background: white;
            height: 100%;
            padding: 0 10px;
            font-size: 20px;
            width: 550px;
        }
        nav .search_box span{
            color: #2A3759;
            font-size: 20px;
            background: white;
            height: 100%;
            padding: 8px;
            position: relative;
            cursor: pointer;
            z-index: 1;
        }
        /* nav .search_box span:hover{
            color: white;
        } */
        nav .search_box span ::after{
            height: 100%;
            width: 0%;
            content: '';
            background: #2A3759;
            position: absolute;
            top: 0;
            right: 0;
            z-index: -1;
            transition: 0.3s;
        }
        nav .search_box span:hover ::after{
            width: 100%;

        }

    </style>

    <body>
        <nav>
            <div class="logo">
                <img src="image/logo1.png" width="125px">
            </div>
            <ul>
                <li><a href="clintpage.jsp">Home</a></li>
                <li><a href="my_cart.jsp">My Cart</a></li>
                <li><a href="my_orders.jsp">My Orders</a></li>
                <li><a href="logout">Logout</a></li>
                <li><p>Welcome <%=session.getAttribute("name")%></p></li>
            </ul>
        </nav>
    </body>

</html>