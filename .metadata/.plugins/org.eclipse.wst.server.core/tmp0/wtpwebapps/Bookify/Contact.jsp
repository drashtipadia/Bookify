<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact us</title>

</head>

<body>
  <section id="page-name">

    <div class="container h-200">
      <div class="row">
        <div class="col mt-5 text-center">
          <h1>Contact-us</h1>
          <div class="line"></div>

        </div>

      </div>
    </div>
  </section>
  <!-- page header end -->

  <!-- contact start -->
  <section class="contact-section" class="py-5">
    <div class="container">
      <div class="row g-3 justify-content-around py-5">
        <div class="col col-lg-6 col-md-12 col-sm-12 py-5 contact-form ">
          <h1 class="display-6">Contact Info</h1>
          <p class="lead mt-3">Reading is considered as the most intelligent habit. Reading is intelligent but it's also
            enriching, soothing, escapist, inspirational, transformative and a timeless journey.</p>
          <h3 class="mt-4"><i class="fa-solid fa-location-dot"></i> Office Address</h3>
          <p class="lead mt-3">Shop No B-1B, Bhagat Singh Nagar No 1, Link Road, Navrangpura, Ahemdabad-300 009 </p>
          <h3 class="mt-3"><i class="fa-solid fa-phone"></i> Phone Number</h3>
          9123542434
          <h3 class="mt-3"><i class="fa-solid fa-envelope"></i> Email</h3>
          bookify@gmail.com
        </div>
        <div class="col col-lg-6 col-md-12 col-sm-12 py-5 contact-form">

          <form id="cform" class="row g-3 w-100 m-auto bg-light" name="cform" method="post" action="db_contact.jsp">
            <div class="col-12 ">
              <input type="text" name="cname" id="cname" placeholder="Enter Your Name..."
                class="form-control-lg w-100 border-1" />
              <label for="cnamemsg" id="cnamemsg" class=" d-none errmsg form-label">Name is Required</label>
            </div>

            <div class="col-12 ">
              <input type="text" id="cnumber" name="cnumber" placeholder="Enter Your Phone Number..."
                class="form-control-lg w-100 border-1" />
              <label for="cnumbermsg" id="cnumbermsg" class="d-none errmsg form-label">Number is Required</label>
            </div>

            <div class="col-12 ">

              <input type="text" id="cemail" name="cemail" placeholder="Enter Your Email..."
                class="form-control-lg w-100 border-1" />
              <label for="cemailmsg" id="cemailmsg" class="d-none errmsg form-label">Email is Required</label>
            </div>

            <div class="col-12 ">
              <textarea id="cusermsg" name="cusermsg" placeholder="Enter Mesaage..."
                class="form-control-lg w-100 border-1" rows="3"></textarea>
              <label for="cusermessage" id="cusermessage" class="d-none errmsg form-label">Message is Required</label>
            </div>

            <div class="col-12 pb-4">
              <button type="submit" class="btn allbtn w-100">Sumbit</button>
            </div>
          </form>

        </div>
      </div>
    </div>
    </div>

  </section>
  <!-- contact end -->
  <div class="container">
    <iframe
      src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14686.357146727549!2d72.55101163303387!3d23.0388477129574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e84f521640d4b%3A0x6853ee97a9a2996b!2sNavrangpura%2C%20Ahmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1703600074831!5m2!1sen!2sin"
      width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
      referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>


  <script src="./javascript/validation.js"></script>
</body>

</html>

<%@ include file="Footer.jsp" %>