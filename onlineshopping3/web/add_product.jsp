<% 
    if(session.getAttribute("name")==null){
        response.sendRedirect("admin_login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Product</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
  <link rel="stylesheet" href="./style.css">

</head>

<body>
  <%@ include file="admin_loginh.jsp" %>
    <!-- partial:index.partial.html -->
    <div class="pt-5">
      <h1 class="text-center">Add Product</h1>

      <div class="container">
        <div class="row">
          <div class="col-md-5 mx-auto">
            <div class="card card-body">

              <form action="add_product" method="post" data-parsley-validate=""
                data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1"><input type="hidden"
                  name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                <div class="form-group required">
                  <lSabel for="id">ID</lSabel>
                  <input type="number" class="form-control text-lowercase" id="id" required="" name="Id" value="">
                </div>
                <div class="form-group required">
                  <lSabel for="name"> Name </lSabel>
                  <input type="text" class="form-control" required="" id="name" name="Name" value="">
                </div>
                <div class="form-group required">
                  <lSabel for="price"> Price </lSabel>
                  <input type="number" class="form-control" required="" id="number1" name="Price" value="">
                </div>
                <div class="form-group required">
                  <lSabel for="Image_location"> Image Location </lSabel>
                  <input type="text" class="form-control" required="" id="image_Location" name="Image_Location"
                    value="">
                </div>
                  <div class="form-group required">
                  <lSabel for="Description"> Description </lSabel>
                  <input type="text" class="form-control" required="" id="description" name="Description"
                    value="">
                </div>
                <div class="form-group pt-1">
                  <button class="btn btn-primary btn-block" type="submit">Add Product</button>
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

</html>