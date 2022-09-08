<% 
    if(session.getAttribute("name")==null){
        response.sendRedirect("login.jsp");
    }
%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--        <link rel="stylesheet" type="text/css" href="css/clintpage.css">-->
        <title>HOME</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
           

        </style>
    </head>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--  <link rel="stylesheet" href="index.css">-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">

  <style>

    /* ************************************ SLIDER PART BEGINS HERE ************************************ */
    #slideshow {
      overflow: hidden;
      height: 500px;
      width: 1350px;
      margin: 0 auto;
    }

    .slide-wrapper {
      width: 5400px;
      -webkit-animation: slide 18s ease infinite;
    }

    .slide {
      float: left;
      height: 500px;
      width: 1350px;
    }

    .slide:nth-child(1) {
      background: #D93B65;
    }

    .slide:nth-child(2) {
      background: #037E8C;
    }

    .slide:nth-child(3) {
      background: #36BF66;
    }

    .slide:nth-child(4) {
      background: #D9D055;
    }

    .slide-number {
      color: #000;
      text-align: center;
      font-size: 10em;
    }

    @-webkit-keyframes slide {
      20% {
        margin-left: 0px;
      }

      30% {
        margin-left: -1350px;
      }

      50% {
        margin-left: -1350px;
      }

      60% {
        margin-left: -2700px;
      }

      70% {
        margin-left: -2700px;
      }

      80% {
        margin-left: -4050px;
      }

      90% {
        margin-left: -4050px;
      }
      
    }

    .spacing {
      width: 100%;
      background-color: white;
      height: 70px;
    }

    .navigation3 {
      width: 100%;
      background-color: #ffe9d7;
      display: flex;
      flex-direction: row;
      flex-wrap: nowrap;
      justify-content: space-evenly;
      padding: 10px;
    }

    .navigation-item {
      padding: 10px;

    }

    .navigation-item:hover {
      background-color: #ff8522;
      color: white;
      border-radius: 5px;
    }

    .Title {
      text-align: center;
      /* margin: 0 auto; */
      margin-bottom: 25px;
      color: #363636;
    }

    /* ************************************ SLIDER PART ENDS HERE ************************************ */





    .swiper {
      width: 950px;

    }

    .card {
      position: relative;
      background: #fff;
      border-radius: 20px;
      margin: 20px 0;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
    }


    /* PRODUCTS */
    .product {
      position: relative;
      overflow: hidden;
      padding: 20px;
      width: 1146px;
      /* background-color: green; */
      margin: 0 auto;
      /* padding: 50px; */
    }

    .product-container {
      /* padding: 0 10vw; */
      padding: 0px 81px;
      display: flex;
      overflow-x: auto;
      overflow: hidden;
      scroll-behavior: smooth;
      margin: 0 auto;
      
    }

    .product-card {
      flex: 0 0 auto;
      width: 250px;
      height: 400px;
      margin-right: 30px;
      background-color: white;
      border-radius: 12px;
      box-shadow: 0px 0px 14px #ecebeb;
      display: flex;
          padding: 0 0 15px 0;
    margin: 20px;
    flex-direction: column;
    justify-content: space-between;
    }

    .product-image {
      position: relative;
      width: 90%;
      margin: 0 auto;
      margin-top: 12px;
      height: 250px;
      overflow: hidden;
      border-radius: 12px;
      background-color: #ff8b1f;
    }

    .product-image img {
      border-radius: 12px;
    }

    .product-title {
      font-weight: 600;
      margin: 15px;
      text-align: center;
    }

    .product-price {
      width: 70%;
      padding: 10px;
      background-color: #ff8522;
      margin: 0 auto;
      border-radius: 10px;
      text-align: center;
      font-weight: 500;
    }

    .pre-btn,
    .nxt-btn {
      border: none;
      width: 5vw;
      height: 100%;
      position: absolute;
      top: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      background: none;
      z-index: 8;
    }

    .pre-btn {
      left: 0;
      transform: rotate(180deg);
    }

    .nxt-btn {
      right: 0;
    }

    .pre-btn img,
    .nxt-btn img {
      opacity: 0.2;
    }

    .pre-btn:hover img,
    .nxt-btn:hover img {
      opacity: 1;
    }


      .product-container1 {
      margin: 0px 110px;
    background-color: #fcfcfc;
   
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    border-radius: 36px;
   
    padding-top: 20px;
    }
  </style>
</head>

<body>
    <%@ include file="client_loginh.jsp" %>

  <div id="slideshow">
    <div class="slide-wrapper">
      <div class="slide">
        <h1 class="slide-number"><img src="image/1.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/2.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/3.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
      <div class="slide">
        <h1 class="slide-number"><img src="image/4.jpg" width="100%" height="100%" alt=""/></h1>
      </div>
    </div>
  </div>

  <!-- ************************************** SLIDESHOW SECTION ENDS HERE ************************************** -->
  <br> <br>
<!-- 
  <h1 class="Title">Our Products</h1>


  <div class="section" id="section1">
    <section class="product">
      <button class="pre-btn"><img src="image/arrow.png" alt=""></i></button>
      <button class="nxt-btn"><img src="image/arrow.png" alt=""></button>
      <div class="product-container">
       
  <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/customer", "root", "");
 //here sonoo is database name, root is username and password  

                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from product_info");
                    while (rs.next()) {
                    
                %>
        <div class="product-card">
          <div class="product-image">
              <a href="first_product.jsp?id=<%=rs.getInt(1)%>">
                  <img src="image/<%=rs.getString("image_location")%>" width="100%" height="100%" class="product-thumb" alt="">
                  </a>
          </div>

          <div class="product-title">
           <%=rs.getString(2)%>
          </div>

          <div class="product-price">
            Rs.  <%=rs.getInt(3)%>
          </div>

        </div>
  <%
                }
                    con.close();
                %>
        

        </div>
      </div>
  </div>
  </section>-->

  <div class="spacing"></div>
    <h1 class="Title">Our Products</h1>
  <div class="product-container1">

  <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/customer", "root", "");
 //here sonoo is database name, root is username and password  

                    Statement stm = conn.createStatement();
                    ResultSet rsq = stm.executeQuery("select * from product_info");
                    while (rsq.next()) {
                    
                %>
  <div class="product-card">
    
            <div class="product-image">
                   <a href="first_product_1.jsp?id=<%=rsq.getInt(1)%>">
                       <img src="image/<%=rsq.getString("image_location")%>" width="100%" height="100%" >
                       </a>
            </div>
    
            <div class="product-title">
                <%=rsq.getString(2)%>
            </div>
    
            <div class="product-title">
              Rs.  <%=rsq.getString(3)%>
            </div>
       
          </div>
  <%
                }
                    conn.close();
                %>

  </div>

  <footer class="footer">


  </footer>

<!--  <script>
    const productContainers = [...document.querySelectorAll('.product-container')];
    const nxtBtn = [...document.querySelectorAll('.nxt-btn')];
    const preBtn = [...document.querySelectorAll('.pre-btn')];

    productContainers.forEach((item, i) => {
      let containerDimensions = item.getBoundingClientRect();
      let containerWidth = containerDimensions.width;

      nxtBtn[i].addEventListener('click', () => {
        item.scrollLeft += containerWidth;
      })

      preBtn[i].addEventListener('click', () => {
        item.scrollLeft -= containerWidth;
      })
    })
  </script>-->
  
</body>
<%@ include file="footer.jsp" %>
</html>