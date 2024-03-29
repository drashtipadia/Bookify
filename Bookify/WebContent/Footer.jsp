<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="./css/bootstrap.min.css" />
  
  <link rel="stylesheet" href="./css/style.css" />



</head>

<body>
  <!-- Footer Start -->
  <footer id="main-footer" class="text-light py-5 footer">
    <div class="container">
      <div class="row">
        <div class="col-md-6 px-4" id="foot">
          <h4>Bookify</h4>
          <p class="lead">The Bookify is an independent online bookstore. We provide bestselling, new & used/refurbished books sourced from publishers and other vendors, which includes imported titles, dead stock from publishers etc. We deliver home across India.</p>

        </div>
        <div class="col-md-6 px-4" >
          <h4> About Bookify.com</h4>
          <ul class="footer-link">
            <li><a href="./Index.jsp">Home</a></li>
            <li><a href="./About.jsp">About us</a></li>
            <li><a href="./privacypolicy.jsp">Privacy Policy</a></li>
            <li><a href="./Contcat.jsp">Contact</a></li>
          </ul>
        </div>
        
      </div>
    </div>
  </footer>


  <!-- Footer End -->
  <footer id="footer" class="bg-dark text-light py-3 footer">
    <div class="container text-center">
      <h4>Developed by: Drashti Padia</h4>
        <% if(session.getAttribute("name")!=null){ %>
      <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#feedbackModal">
        feedback
      </button>
        <%} %>
    </div>
  </footer>
  <!-- Modal Feedback start -->
  <div class="modal fade text-dark" id="feedbackModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <form id="fform" method="post" action="db_feedback.jsp">
          <div class="model-header">
            <h5 class="modal-title m-1 text-center">Feedback</h5> 
          </div>

          <div class="modal-body">

            <div class="form-group">
              <label for="Name">Name</label>
              <input type="text" id="feedname" name="feedname" class="form-control">
              <label for="fnamemsg" id="fnamemsg" class=" d-none errmsg form-label">Name is Required</label>
            </div>
            <div class="form-group">
              <label for="Email">Email</label>
              <input type="email" id="femail" name="femail" class="form-control" placeholder="abc@gmail.com">
              <label for="femailmsg" id="femailmsg" class=" d-none errmsg form-label">Email is Required</label>
            </div>
            <div class="form-group">
              <label for="Feedback">Feedback</label>
              <textarea class="form-control" id="feedback" name="feedback" placeholder="write here...."></textarea>
              <label for="feedbackmsg" id="feedbackmsg" class=" d-none errmsg form-label">Some thing write in
                feedback</label>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input type="submit" class="btn allbtn" value="Submit"></input>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- Model feedback end -->

  <script src="./javascript/bootstrap.js"></script>
  <script src="./javascript/feedbackvalidation.js"></script>

</body>

</html>