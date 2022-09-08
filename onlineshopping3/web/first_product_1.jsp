<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Product Page</title>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <style>

            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');
            /** Poppins Font **/


            /** gobal layout */
            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            :root {
                --primary-color: #5344db;
                --accent-color: #5344db;
                --grey: #484848;
                --bg-grey: #efefef;
                --shadow: #949494;
            }

            .container {
                display: flex;
                position: relative;
                align-items: center;
                justify-content: center;
                height: 100vh;
            }

            .row {
                display: flex;
                gap: 20px;
            }

            .col-6 {
                width: 50%;
            }

            .single-product {
                width: 1080px;
                position: relative;
            }

            /** Breadcrumb **/

            .single-product .breadcrumb {
                background: #48484810;
                padding: 8px 4px;
                border-radius: 8px;
                font-size: 15px;
            }

            .breadcrumb span {
                display: inline-flex;
                flex-direction: row;
                gap: 8px;
                margin-left: 8px;
            }

            .breadcrumb span:not(:last-child)::after {
                content: '/';
            }

            .breadcrumb span a {
                text-decoration: none;
                color: var(--primary-color);
            }

            /** product image **/

            .single-product .product-image {
                width: 100%;
            }

            .product-image .product-image-main {
                position: relative;
                display: block;
                height: 480px;
                background: var(--bg-grey);
                padding: 10px;
            }

            .product-image-main img {
                display: block;
                width: 100%;
                height: 100%;
                object-fit: contain;
            }

            .product-image-slider {
                display: flex;
                gap: 10px;
                margin: 10px 0;
            }

            .product-image-slider img {
                width: 90px;
                height: 90px;
                background: var(--bg-grey);
                padding: 6px;
                cursor: pointer;
            }

            /** product title **/

            .product-title {
                margin-top: 20px;

            }

            .product-title h2 {
                font-size: 32px;
                line-height: 2.4rem;
                font-weight: 700;
                letter-spacing: -0.02rem;
            }

            /** product rating **/
            .product-rating {
                display: flex;
                margin-top: 4px;
                margin-bottom: 10px;
                align-items: center;
            }

            .product-rating span:not(:last-child) {
                color: #ffc600;
            }

            .product-rating .review {
                color: var(--grey);
                font-size: 12px;
                font-weight: 500;
            }

            /** Product price **/
            .product-price {
                display: flex;
                position: relative;
                margin: 10px 0;
                align-items: center;
            }

            .product-price .offer-price {
                font-size: 48px;
                font-weight: 700;
            }

            .product-price .sale-price {
                font-size: 22px;
                font-weight: 500;
                text-decoration: line-through;
                color: var(--grey);
                margin-left: 12px;
            }

            /** Product Details **/
            .product-details {
                margin: 10px 0;
            }

            .product-details h3 {
                font-size: 18px;
                font-weight: 500;
            }

            .product-details p {
                margin: 5px 0;
                font-size: 14px;
                line-height: 1.2rem;
            }

            /** Product size **/
            .product-size {
                margin: 10px 0;
            }

            .product-size h4 {
                font-size: 16px;
                font-weight: 500;
            }

            .product-size .size-layout {
                margin: 5px 0;
                display: inline-flex;
                align-items: center;
                gap: 10px;
                cursor: pointer;
            }

            .product-size .size-layout .size-input {
                display: none;
            }

            .product-size .size-layout .size {
                background: var(--bg-grey);
                padding: 10px 18px;
                border: 1px solid var(--bg-grey);
                border-radius: 4px;
                margin-left: 0px;
                font-size: 16px;
                font-weight: 700;
                cursor: pointer;
            }

            .product-size .size-layout .size:hover {
                border: 1px solid var(--grey);
            }

            .product-size .size-layout input[type="radio"]:checked+.size {
                background-color: rgb(35, 35, 35);
                border: 1px solid var(--grey);
                color: var(--bg-grey);
                box-shadow: 0 3px 6px var(--shadow);

            }


            /** Product Color **/
            .product-color {
                margin: 10px 0;
                justify-content: center;
            }

            .product-color h4 {
                font-size: 16px;
                font-weight: 500;
            }

            .product-color .color-layout {
                margin: 5px 0;
                display: flex;
                gap: 10px;
            }

            .product-color .color-layout label {
                border-radius: 4px;
                cursor: pointer;
                content: '';
                width: 40px;
                height: 40px;
                display: inline-block;
            }

            .product-color .color-layout .black {

                background-color: black;
            }

            .product-color .color-layout .red {
                background-color: red;
            }

            .product-color .color-layout .blue {
                background-color: blue;
            }

            .product-color .color-layout input[type="radio"]:checked+label {
                box-shadow: 0 3px 6px var(--shadow);
            }

            .product-color .color-layout .color-input {
                display: none;
            }


            /** divider **/
            .divider {
                display: block;
                height: 1px;
                width: 100%;
                background: #48484830;
                margin: 20px 0;
            }

            /** product Button Group **/

            .product-btn-group {
                display: flex;
                gap: 15px;
            }

            .product-btn-group .button {
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 4px;
                padding: 10px 24px;
                font-size: 16px;
                font-weight: 500;
            }

            .product-btn-group .buy-now {
                background-color: var(--accent-color);
                color: #fff;
                border: 1px solid var(--accent-color);
                border-radius: 4px;
                cursor: pointer;
            }

            .product-btn-group .buy-now i {
                font-size: 20px;
            }

            .product-btn-group .buy-now:hover {
                box-shadow: 0 3px 6px var(--shadow);
            }

            .product-btn-group .add-cart {

                background-color: var(--bg-grey);
                color: var(--grey);
                border-radius: 4px;
                cursor: pointer;
            }

            .product-btn-group .add-cart i {
                font-size: 20px;
            }

            .product-btn-group .add-cart:hover {
                box-shadow: 0 3px 6px var(--shadow);
                background: var(--grey);
                color: #fff;
            }

            .product-btn-group .heart {
                color: var(--grey);
                cursor: pointer;
            }

            .product-btn-group .heart i {
                font-size: 20px;
            }

            .product-btn-group .heart:hover {
                color: var(--accent-color);
            }


            /** Responsive Mobile **/
            @media screen and (max-width:520px) {
                .container {
                    padding: 20px;
                    height: auto;
                }

                .row {
                    display: block;
                }

                .col-6 {
                    width: 100%;
                    display: block;
                }

                .single-product {
                    width: 100%;
                    position: relative;
                }

                .product-image .product-image-main {
                    width: 100%;
                    height: 280px;
                }

                .product-image-slider {
                    gap: 5px;
                }

                .breadcrumb {
                    display: none;
                }

                .product-title h2 {
                    font-size: 24px;
                    line-height: 1.6rem;
                }

                .product-size {
                    display: block;
                }

                .product-size .size-layout {
                    display: block;
                    margin: 10px 0;

                }

                .product-size .size-layout .size {
                    padding: 6px 10px;
                }

                .product-btn-group {
                    display: flex;
                    flex-direction: column;
                    gap: 10px;
                }
            }

            /** Responsive Tablet **/
            @media (min-width: 520px) and (max-width: 1080px) {
                .container {
                    display: block;
                    height: auto;
                    padding: 20px;
                }

            }
        </style>
    </head>

    <body>
        <%@ include file="client_loginh.jsp" %>
        <div class="container">
            <div class="single-product">
                <div class="row">
                    <div class="col-6">
                        <div class="product-image">
                            <div class="product-image-main">
                                <%
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection(
                                            "jdbc:mysql://localhost:3306/customer", "root", "");
                                    //here sonoo is database name, root is username and password  
                                    Statement stmt = con.createStatement();
                                    String id = request.getParameter("id");
                                    ResultSet rs = stmt.executeQuery("select * from product_info where id = " + id);
                                    while (rs.next()) {
                                %>
                                <img src=" image/<%=rs.getString("image_location")%>" alt="" id="product-main-image">
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="product">
                            <div class="product-title">
                                <h2>
                                    <%=rs.getString("name")%>
                                </h2>
                            </div>
                            <div class="product-rating">
                                <span><i class="bx bxs-star"></i></span>
                                <span><i class="bx bxs-star"></i></span>
                                <span><i class="bx bxs-star"></i></span>
                                <span><i class="bx bxs-star"></i></span>
                                <span><i class="bx bxs-star"></i></span>
                                <span class="review">(47 Review)</span>
                            </div>
                            <div class="product-price">
                                <span class="offer-price">Rs.<%=rs.getString("price")%></span>
                            </div>

                            <div class="product-details">
                                <h3>Description</h3>
                                <p><%=rs.getString("Description")%></p>
                            </div>
                        </div>
                        <span class="divider"></span>

                        <div class="product-btn-group">
                            <form action="cartServlet?id=<%=rs.getInt(1)%>&user=1" method="post">
                                <a href="first_checkout.jsp?id=<%=rs.getInt(1)%>" style="text-decoration: none;">
                                    <button type="submit" class="button buy-now"><i class='bx bxs-zap'></i> Buy Now</button> </a> </form>
                            <div class="button add-cart"><i class='bx bxs-cart'></i> Add to Cart</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%}
        con.close();%>
    <!--script-->
</body>
<%@ include file="footer.jsp" %>
</html>