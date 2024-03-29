const updateproform = document.getElementById("adminupdateprouctform");
const proname = document.getElementById("updatepname");
const pnamemsg = document.getElementById("pnamemsg");
const author = document.getElementById("updateauthor");
const authormsg = document.getElementById("authormsg");
const detail=document.getElementById("updatepdetails");
const detailmsg=document.getElementById("prodetailsmsg");
const price = document.getElementById("updateprice");
const pricemsg = document.getElementById("ppricemsg");
const quantity = document.getElementById("updatequantity");
const quantitymsg = document.getElementById("pquantitymsg");
const category = document.getElementById("updatecategory");
const categorymsg = document.getElementById("pcategorymsg");
updateproform.addEventListener("submit", function (e) {
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