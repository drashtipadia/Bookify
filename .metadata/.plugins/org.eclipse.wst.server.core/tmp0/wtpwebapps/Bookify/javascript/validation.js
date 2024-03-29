const cform = document.getElementById("cform");
const cname = document.getElementById("cname");
const cnumber = document.getElementById("cnumber");
const cnamemsg = document.getElementById("cnamemsg");
const cnumbermsg = document.getElementById("cnumbermsg");
const cemail=document.getElementById("cemail");
const cemailmsg=document.getElementById("cemailmsg");
const cusermsg=document.getElementById("cusermsg");
const cusermessage=document.getElementById("cusermessage");
cform.addEventListener("submit", function (e) {
  if (cblankValidation() === true && cvalueValidation() === true) {
  } else {
    e.preventDefault();
  }
});

function cblankValidation() {
  let flag = true;
  if (cname.value.trim() === "" || cname.value == null) {
    flag = false;
    cnamemsg.classList.remove("d-none");
  } else {
    cnamemsg.classList.add("d-none");
  }
  if (cnumber.value.trim() === "" || cnumber.value == null) {
    flag = false;
    cnumbermsg.classList.remove("d-none");
  } else {
    cnumbermsg.classList.add("d-none");
  }
  if (cemail.value.trim() === "" || cemail.value == null) {
    flag = false;
    cemailmsg.classList.remove("d-none");
  } else {
    cemailmsg.classList.add("d-none");
  }
  if (cusermsg.value.trim() === "" || cusermsg.value == null) {
    flag = false;
    cusermessage.classList.remove("d-none");
  } else {
    cusermessage.classList.add("d-none");
  }
  return flag;
}

function cvalueValidation() {
  let flag = true;
  if (cname.value.match(/^[A-Za-z\s]+$/) == null) {
    flag = false;
    cnamemsg.classList.remove("d-none");
    cnamemsg.innerText = "give proper name...";
  } else {
    cnamemsg.classList.add("d-none");
  }

  if (cnumber.value.length !== 10) {
    flag = false;
    cnumbermsg.classList.remove("d-none");
    cnumbermsg.innerText = "Phone Number Length must be 10";
  } else if (cnumber.value.match(/^[0-9]*$/) == null) {
    flag = false;
    cnumbermsg.classList.remove("d-none");
    cnumbermsg.innerText = "Phone Number  must be numeric";
  } else {
    cnumbermsg.classList.add("d-none");
  }

  if (
    cemail.value.match(
      /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    ) == null
  ) {
    flag = false;
    cemailmsg.classList.remove("d-none");
    cemailmsg.innerText = "Enter Email proper format ";
  } else {
    cemailmsg.classList.add("d-none");
  }


  return flag;
}
