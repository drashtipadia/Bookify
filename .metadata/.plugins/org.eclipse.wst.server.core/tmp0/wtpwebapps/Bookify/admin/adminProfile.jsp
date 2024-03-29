<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>admin Profile</title>
</head>

<body>
  <section id="adminProfileSection" class="mt-5">
    <div class="container d-flex justify-content-center">
      <h1 class="m-auto">Admin Profile</h1>
    </div>
  </section>
  <section id="adminprofile" class="py-5">
    <div class="container justify-content-around border border-primary-5 bg-light">
      <div class="row justify-content-around text-center">
        <div class="col-6 mt-5  py-3">
          <h1><a href="#" class="text-decoration-none" onclick="showchangepassword();">Change Password </a></h1><br>
          <h1><a href="#" class="text-decoration-none" onclick="shownewadmin();">Add new Admin</a></h1>
          <hr>
        </div>
       
      </div>
   
      <div class="row justify-content-around">
        <div class="col-6 mt-4 p-4 " id="changepassword">
          <div class="w-80">
            <h1 class="text-center">Change Password</h1>
            <form id="changepasswordForm" class="row g-3 m-auto bg-light" method="POST"
              action="adminChangePassword.jsp">
              <div class="col-12 ">
                <input type="password" name="adminoldpassword" id="adminoldpassword" placeholder="Old Password"
                  class="form-control w-100 border-1" />
                <label for="adminoldpwdmsg" id="adminoldpwdmsg" class=" d-none errmsg form-label">Old Password is
                  Required</label>
              </div>
              <div class="col-12 ">
                <input type="password" name="adminnewpassword" id="adminnewpassword" placeholder="New Password"
                  class="form-control w-100 border-1" />
                <label for="adminnewpwdmsg" id="adminnewpwdmsg" class=" d-none errmsg form-label">New Password is
                  Required</label>
              </div>
              <div class="col-12 ">
                <input type="password" name="admincpassword" id="admincpassword" placeholder="Confirm Password"
                  class="form-control w-100 border-1" />
                <label for="adminnewcpwdmsg" id="adminnewcpwdmsg" class=" d-none errmsg form-label">Confirm Password is
                  Required</label>
              </div>
              <div class="col-12 pb-4">
                <button type="submit" class="btn btn-primary w-100">Change Password</button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-8 mt-4 p-4 d-none" id="newadmin">
          <div class="w-80">
            <h1 class="text-center">Create New Admin</h1>

            <form id="addadminform" class="row g-3 m-auto bg-light" method="POST" action="insertNewAdmin.jsp">
              <div class="col-12 ">
                <input type="text" name="newadminname" id="newadminname" placeholder="Enter Admin Name..."
                  class="form-control w-100 border-1" />
                <label for="newanamemsg" id="newanamemsg" class=" d-none errmsg form-label">Name is Required</label>
              </div>

              <div class="col-12 ">
                <input type="password" id="newadminpassword" name="newadminpassword"
                  placeholder="Enter Your password..." class="form-control w-60 border-1" />
                <label for="newapassmsg" id="newapassmsg" class="d-none errmsg form-label">Password is Required</label>
              </div>
              <div class="col-12 ">
                <input type="password" id="newadmincpassword" name="newadmincpassword"
                  placeholder="Enter Your Confirm password..." class="form-control w-60 border-1" />
                <label for="newcpassmsg" id="newcpassmsg" class="d-none errmsg form-label">Confirm Password is
                  Required</label>
              </div>

              <div class="col-12 pb-4">
                <button type="submit" class="btn btn-primary w-100">Sumbit</button>
              </div>
            </form>
          </div>
        </div>


      </div>
    </div>
  </section>


  <script src="./javascript/adminprofilepagevalidation.js"></script>

</body>

</html>

<%@ include file="footer.jsp"%>