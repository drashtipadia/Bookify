const rform = document.getElementById("regform");
const rname = document.getElementById("rname");
const rnumber = document.getElementById("rnumber");
const remail = document.getElementById("remail");
const rpassword = document.getElementById("rpassword");
const rcpassword = document.getElementById("rcpassword");
const rnamemsg = document.getElementById("rnamemsg");
const rnumbermsg = document.getElementById("rnumbermsg");
const remailmsg = document.getElementById("remailmsg");
const rpasswordmsg = document.getElementById("rpasswordmsg");
const rcpmsg = document.getElementById("rcpmsg");

rform.addEventListener("submit", function (e) {
  if (blankValidation() === true && valueValidation() === true) {
  } else {
    e.preventDefault();
  }
});

function blankValidation() {
  let flag = true;
  console.log(rname.value);
  if (rname.value.trim() === "" || rname.value === null) {
    flag = false;
    rnamemsg.classList.remove("d-none");
  } else {
    rnamemsg.classList.add("d-none");
  }

  if (remail.value.trim() === "" || remail.value === null) {
    flag = false;
    remailmsg.classList.remove("d-none");
  } else {
    remailmsg.classList.add("d-none");
  }
  if (rnumber.value.trim() === "" || rnumber.value === null) {
    flag = false;
    rnumbermsg.classList.remove("d-none");
  } else {
    rnumbermsg.classList.add("d-none");
  }
  if (rpassword.value.trim() === "" || rpassword.value === null) {
    flag = false;
    rpasswordmsg.classList.remove("d-none");
  } else {
    rpasswordmsg.classList.add("d-none");
  }
  if (rcpassword.value.trim() === "" || rcpassword.value === null) {
    flag = false;
    rcpmsg.classList.remove("d-none");
  } else {
    rcpmsg.classList.add("d-none");
  }
  return flag;
}

function valueValidation() {
  let flag = true;
  if (rname.value.match(/^[A-Za-z\s]+$/) == null) {
    flag = false;
    rnamemsg.classList.remove("d-none");
    rnamemsg.innerText = "give proper name...";
  } else {
    rnamemsg.classList.add("d-none");
  }

  if (rnumber.value.length !== 10) {
    flag = false;
    rnumbermsg.classList.remove("d-none");
    rnumbermsg.innerText = "Phone Number Length must be 10";
  }else if(rnumber.value.match(/^[0-9]*$/) == null)
  {
    flag = false;
    rnumbermsg.classList.remove("d-none");
    rnumbermsg.innerText = "Phone Number  must be numeric";

  } else {
    rnumbermsg.classList.add("d-none");
  }
  if (
    remail.value.match(
      /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    ) == null
  ) {
    flag = false;
    remailmsg.classList.remove("d-none");
    remailmsg.innerText = "Enter Email proper format ";
  } else {
    remailmsg.classList.add("d-none");
  }
  if (rpassword.value !== rcpassword.value) {
    flag = false;
    rcpmsg.classList.remove("d-none");
    rcpmsg.innerText = "Confirm Password must match with Password";
  } else {
    rcpmsg.classList.add("d-none");
  }
  return flag;
}

const lform = document.getElementById("log_form");
const lemail = document.getElementById("lemail");
const lpassword = document.getElementById("lpassword");
const lemailmsg = document.getElementById("lemailmsg");
const lpasswordmsg = document.getElementById("lpasswordmsg");
lform.addEventListener("submit", function (e) {
  if (lblankValidation() === true) {
  } else {
    e.preventDefault();
  }
});
function lblankValidation() {
  let flag = true;
  if (lemail.value.trim() === "" || lemail.value == null) {
    flag = false;
    lemailmsg.classList.remove("d-none");
  } else {
    lemailmsg.classList.add("d-none");
  }
  if (lpassword.value.trim() === "" || lpassword.value == null) {
    flag = false;
    lpasswordmsg.classList.remove("d-none");
  } else {
    lpasswordmsg.classList.add("d-none");
  }
  return flag;
}

window.addEventListener("load", function () {
  const counter = this.document.getElementById("counter");
  const counter1 = this.document.getElementById("counter1");
  let endValue = counter.innerText;
  let endValue1 = counter1.innerText;
  let startValue = 1;
  let startValue1 = 1;
  let mycount1 = setInterval(counterVisiter, 20);
  let mycount = setInterval(counterVisiter, 20);
  function counterVisiter() {
    if (startValue <= endValue) {
      counter.innerHTML = startValue;
      counter1.innerHTML=startValue;
      startValue = startValue + 1;
    } else {
      clearInterval(mycount);
    }
    if (startValue1 <= endValue1) {
      
      counter1.innerHTML=startValue1;
      startValue1 = startValue1 + 1;
    } else {
      clearInterval(mycount1);
    }
  }
  
});

function loginError()
{ 
  const modalreg =new bootstrap.Modal('#loginModal');
  modalreg.show();
  document.getElementById('loginError').classList.remove('d-none');
}

function registerError()
{ 
  const modalreg =new bootstrap.Modal('#register');
  modalreg.show();
  document.getElementById('RegisterError').classList.remove('d-none');
}






