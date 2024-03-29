<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/bootstrap.min.css" />
  <link rel="stylesheet" href="./css/all.min.css" />
  <link rel="stylesheet" href="./css/style.css" />

  <title>Login</title>
</head>

<body>

  <section class="adminlogin">
    <div class="container py-5">
      <div class="row d-flex justify-content-center align-items-center">
        <div class="col-lg-6 col-md-6">
          <div class="card bg-light text-black">
            <div class="card-body p-5 text-center">
              <form id="adminloginform" method="post" action="adb_login.jsp">
                <h2 class="fw-bold mb-3 text-uppercase">Login</h2>
                <p class="text-black mb-5">Please enter your name and password!</p>
                <div class="form-outline mb-4">
                  <input type="text" id="adminname" name="adminname" class="form-control form-control-lg"
                    placeholder="Enter your name..." />
                  <label for="adnamemsg" id="adnamemsg" class="d-none errmsg form-label">Name is Required</label>
                </div>
                <div class="form-outline mb-5">
                  <input type="password" id="adminpass" name="adminpass" class="form-control form-control-lg"
                    placeholder="Enter your Password..." />
                  <label for="adpassmsg" id="adpassmsg" class="d-none errmsg form-label">Password is Required</label>
                </div>
                <input class="btn btn-outline-dark btn-lg px-5" type="submit" value="Login">
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script src="./javascript/bootstrap.js"></script>
  <script src="./javascript/all.min.js"></script>
  <script src="./javascript/adminlogin.js"></script>
</body>

</html>