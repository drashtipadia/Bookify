const addproform = document.getElementById("adminaddprouctform");
const proname = document.getElementById("pro_name");
const pnamemsg = document.getElementById("pnamemsg");
const author = document.getElementById("author");
const authormsg = document.getElementById("authormsg");
const detail=document.getElementById("pro_details");
const detailmsg=document.getElementById("prodetailsmsg");
const picture = document.getElementById("image1");
const picturemsg = document.getElementById("pimagemsg");
const price = document.getElementById("pprice");
const pricemsg = document.getElementById("ppricemsg");
const quantity = document.getElementById("pquantity");
const quantitymsg = document.getElementById("pquantitymsg");
const category = document.getElementById("category");
const categorymsg = document.getElementById("pcategorymsg");
const sale = document.getElementById("sale");
const salemsg = document.getElementById("salemsg");
addproform.addEventListener("submit", function (e) {
  if (blankvalidation() === true) {
  } else {
    e.preventDefault();
  }
});

function blankvalidation() {
  let flag = true;
  if (proname.value.trim() === "" || proname.value === null) {
    flag = false;
    pnamemsg.classList.remove("d-none");
  } else {
    pnamemsg.classList.add("d-none");
  }
 
  if (detail.value.trim() === "" || detail.value === null) {
	    flag = false;
     detailmsg.classList.remove("d-none");
  } else {
		 detailmsg.classList.add("d-none");
  }
  
  if (author.value.trim() === "" || author.value === null) {
    flag = false;
    authormsg.classList.remove("d-none");
  } else {
	 authormsg.classList.add("d-none");
  }   
 
  if (picture.value.trim() === "" || picture.value === null) {
    flag = false;
    picturemsg.classList.remove("d-none");
  } else {
    picturemsg.classList.add("d-none");
  }
 
  if (price.value.trim() === "" || price.value === null) {
	    flag = false;
	    pricemsg.classList.remove("d-none");
	  } else if(price.value.match(/^[0-9]*$/) == null)
	  {
		   flag = false;
		   pricemsg.classList.remove("d-none");
		   pricemsg.innerText = "Price must be numeric";
	  }else {
		pricemsg.classList.add("d-none");
      }
  
  if (quantity.value.trim() === "" || quantity.value === null) {
	    flag = false;
	    pquantitymsg.classList.remove("d-none");
	  } else if(quantity.value.match(/^[0-9]*$/) == null)
	  {
		   flag = false;
		   pquantitymsg.classList.remove("d-none");
		   pquantitymsg.innerText = "quantity must be numeric";
	  }else {
		pquantitymsg.classList.add("d-none");
   }

  if (sale.value.trim() === "" || sale.value === null) {    
	  } else if(sale.value.match(/^[0-9]*$/) == null)
	  {
		   flag = false;
		   salemsg.classList.remove("d-none");
		   salemsg.innerText = "sale must be numeric";
	}else {
		salemsg.classList.add("d-none");
   }
  
  if (category.value === "blank") {
    flag = false;
    categorymsg.classList.remove("d-none");
  } else {
    categorymsg.classList.add("d-none");
  }

  return flag;
}