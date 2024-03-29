<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/all.min.css" />
</head>

<body>

<nav class="navbar navbar-dark bg-dark py-4">
    <div class="container-fluid">
      <h1 class="navbar-brand mb-0 h1 ">Welcome <% out.print(session.getAttribute("adminname")); %></h1>
      <a class="btn btn-light" href="./adminlogout.jsp" type="button">Logout</a>
    </div>
  </nav>

  <nav class="navbar navbar-expand-lg secondnavbar">
    <div class="collapse navbar-collapse" id="navbarNav">
     
      <ul class="navbar-nav">
     
        <li class="nav-item active">
          <a class="nav-link" href="./index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./admincategory.jsp">category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./adminproduct.jsp">Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./adminOrder.jsp">Order</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="./adminregisteruser.jsp">User</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./adminfeedback.jsp">FeedBack</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./admincontact.jsp">Conatct</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="adminProfile.jsp">Profile</a>
        </li>

      </ul>
    </div>
    </div>
  </nav>
 





    <script src="./javascript/bootstrap.bundle.min.js"></script>
    <script src="./javascript/all.min.js"></script>
</body>

</html>