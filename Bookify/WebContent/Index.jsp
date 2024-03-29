<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>

</head>

<body>
  <!-- Slider start -->
  <div id="mycarousel" class="carousel  slide " data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#mycarousel" data-bs-slide-to="0" class="active" aria-current="true"
        aria-label="slide 1"></button>
      <button type="button" data-bs-target="#mycarousel" data-bs-slide-to="1" aria-label="slide 2"></button>
      <button type="button" data-bs-target="#mycarousel" data-bs-slide-to="2" aria-label="slide 3"></button>
      <button type="button" data-bs-target="#mycarousel" data-bs-slide-to="3" aria-label="slide 4"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item  active">
        <img src="./images/carousel1.jpg" class="img-carousel w-100" />
        <!-- <div class="carousel-caption  d-sm-block caption1 ">
          <h1 class="display-3">Baby-Sitter</h1>
          <p class="lead">
            If you can bib them, I will sit them. Friendly babysitters arrive at your door. I'll treat your
            child like mine. Go have fun; I'll do the rest.
          </p>

        </div> -->
      </div>
      <div class="carousel-item ">
        <img src="./images/carousel2.jpg" class="img-carousel w-100" />

      </div>
      <div class="carousel-item ">
        <img src="./images/carousel3.jpg" class="img-carousel w-100" />

      </div>
      <div class="carousel-item ">
        <img src="./images/carousel4.png" class="img-carousel w-100" />

      </div>
    </div>
  </div>
  <!-- slider end -->
  <!-- product 3 section start -->
  <section class="py-5">
    <div class="container">
      <div class="row g-3 productpart text-center">
        <div class="d-grid col-lg-4">
          <a href="product.jsp?value=lateset">
            <img src="./images/newarrival.jpg" class="img-fluid" id="homepart2" />
            <button class="btn rounded-0  allbtn threebtn">New Arrival</button>
          </a>

        </div>
        <div class="col-lg-4">
          <a href="product.jsp?value=sale">
            <img src="./images/sale.jpg" class="img-fluid" id="homepart2" />
            <button class="btn rounded-0  allbtn threebtn">sale on book</button>
          </a>
        </div>
        <div class="col-lg-4">
          <a href="product.jsp?value=trend">
            <img src="./images/trending.jpg" class="img-fluid" id="homepart2" />
            <button class="btn rounded-0 allbtn threebtn">trending book</button>
          </a>
        </div>

      </div>
    </div>
  </section>
  <!-- product 3 section end -->

  

  <!-- counting start -->
  <section class="py-5 oder">
    <div class="container ">
      <div class="row text-center  text-white" id="counterSection">
        <div class="col">
          <h1 class="text-center" id="counter">300</h1>
          <p>Books</p>
        </div>
        <div class="col">
          <h1 class="text-center" id="counter1">800</h1>
          <p>Happy Customer</p>
        </div>
        <div class=" col">
          <h1>2023</h1>
          <p>Since</p>
        </div>
      </div>
    </div>
  </section>
  <!-- counting end -->



  <!-- user review start -->
  <section class="mt-5 mb-0">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <h3>What Our Clients Say </h3>
          <span class="line"></span>
        </div>
      </div>
    </div>
  </section>
  
  <section class="mb-5">
    <div class="container booking  py-3">
      <div class="row justify-content-around">
       <%  
       Statement stf=con.createStatement();
       ResultSet rsf;
       rsf=stf.executeQuery("SELECT * FROM feedback WHERE feed_status='True' ");
       
	   while(rsf.next()){
        	%>
        <div class="col-lg-4 col-md-6">
          <div class="card w-100 h-100">
            <div class="card-body">
              <h5 class="card-title"><% out.print(rsf.getString("fname")); %></h5>
              <p class="card-text"><% out.print(rsf.getString("feedback")); %></p>
            </div>
          </div>
        </div>
        <%  } %>
      </div>
    </div>
  </section>

  <!-- user review end -->

  <!-- Heading start one-->
  <section id="section-one">
    <div class="container">

      <div class="row height-20px py-5">
        <div class="col-md-4 text-center">
          <i class="fa-solid fa-truck-fast fa-4x mb-3"></i>
          <div>
            <h6>Guaranteed Home Delivery</h6>
            <p class="lead"> We provide express shipping for 27000+ Indian pin codes </p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <i class="fa-solid fa-list-check fa-4x mb-3"></i>
          <div>
            <h6>Premium Quality Books </h6>
            <p class="lead"> Get handpicked books at unbelievable rates </p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <i class="fa-solid fa-hand-holding-dollar fa-4x mb-3"></i>
          <div>
            <h6>COD Avalible</h6>
            <p class="lead"> Along with UPI/Card/Netbanking/Paylater</p>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- Heading end one-->
  <!-- FEQ Start -->
  <div class="container py-5">
    <div class="row">
      <div class="col m-3 text-center">
        <h3>FAQs</h3>
        <span class="line"></span>
      </div>
    </div>
    <div class="accordion accordion-flush" id="accordionFlushExample">
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-headingOne">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
            HOW CAN I ORDER?
          </button>
        </h2>
        <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
          data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Please ADD the books you want to purchase TO THE CART. Then click on PROCEED TO
            PLACE ORDER. Next, on the checkout page, enter all necessary details asked for. Also, do not forget to select
            your desired shipping method and payment method. Finally, click on PLACE ORDER. This will lead you to card
            pay online payment page if you opted for online payment OR to the order confirmation page if you opted for
            COD. Thatâs it!</div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-headingTwo">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
            ARE ALL THE BOOKS BRAND NEW?
          </button>
        </h2>
        <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo"
          data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">WE HAVE NEW, PRE LOVED, REFURBISHED, CLASSIC AND VINTAGE BOOKS IN STORE. THERE ARE
            OTHER CATEGORISATION AS PAPERBACKS AND HARDCOVERS FOR SOME TITLES.</div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-headingThree">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
            DO YOU HAVE CUSTOMER SUPPORT?
          </button>
        </h2>
        <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree"
          data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Yes, We offer contcat us support.<br />
            websitr:bookify.com<br />
            WhatsApp: 9123542434</div>
        </div>
      </div>
    </div>
  </div>
  <!-- FEQ end -->


</body>

</html>

<%@ include file="Footer.jsp" %>