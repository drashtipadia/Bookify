function showchangepassword() {
  const newadmin = document.getElementById("newadmin");
  const changepassword = document.getElementById("changepassword");

  newadmin.classList.add("d-none");
  changepassword.classList.remove("d-none");
}
function shownewadmin() {
  const newadmin = document.getElementById("newadmin");
  const changepassword = document.getElementById("changepassword");

  newadmin.classList.remove("d-none");
  changepassword.classList.add("d-none");
}

const addadminform = document.getElementById("addadminform");
const newaname = document.getElementById("newadminname");
const newanamemsg = document.getElementById("newanamemsg");
const newapass = document.getElementById("newadminpassword");
const newapassmsg = document.getElementById("newapassmsg");
const newadmincpass = document.getElementById("newadmincpassword");
const newadmincpassmsg = document.getElementById("newcpassmsg");

addadminform.addEventListener("submit", function (e) {
  if (newablankvalidation() === true && newadminvalueValidation() === true) {
  } else {
    e.preventDefault();
  }
});
function newablankvalidation() {
  let flag = true;
  if (newaname.value.trim() === "" || newaname.value === null) {
    flag = false;
    newanamemsg.classList.remove("d-none");
  }else if(newaname.value.match(/^[A-Za-z\s]+$/) == null)
  {
    flag = false;
    newanamemsg.classList.remove("d-none");
    newanamemsg.innerText="Please enter a proper name";
  }
  else {
    newanamemsg.classList.add("d-none");
  }
  if (newapass.value.trim() === "" || newapass.value === null) {
    flag = false;
    newapassmsg.classList.remove("d-none");
  } else {
    newapassmsg.classList.add("d-none");
  }
  if (newadmincpass.value.trim() === "" || newadmincpass.value === null) {
    flag = false;
    newadmincpassmsg.classList.remove("d-none");
  } else {
    newadmincpassmsg.classList.add("d-none");
  }
  return flag;
}
function newadminvalueValidation() {
  let flag = true;
  if (newapass.value !== newadmincpass.value) {
    flag = false;
    newadmincpassmsg.classList.remove("d-none");
    newadmincpassmsg.innerText = "Confirm Password must match with Password";
  } else {
    newadmincpassmsg.classList.add("d-none");
  }
  return flag;
}

const changepassform = document.getElementById("changepasswordForm");
const aoldpwd = document.getElementById("adminoldpassword");
const aoldpwdmsg = document.getElementById("adminoldpwdmsg");
const anewpwd = document.getElementById("adminnewpassword");
const anewpwdmsg = document.getElementById("adminnewpwdmsg");
const anewcpwd = document.getElementById("admincpassword");
const anewconfirmpwdmsg = document.getElementById("adminnewcpwdmsg");

changepassform.addEventListener("submit", function (e) {
  if (
    changepwdblankvalidation() === true &&
    changepwdvalueValidation() === true
  ) {
  } else {
    e.preventDefault();
  }
});
function changepwdblankvalidation() {
  let flag = true;
  if (aoldpwd.value.trim() === "" || aoldpwd.value === null) {
    flag = false;
    aoldpwdmsg.classList.remove("d-none");
  } else {
    aoldpwdmsg.classList.add("d-none");
  }
  if (anewpwd.value.trim() === "" || anewpwd.value === null) {
    flag = false;
    anewpwdmsg.classList.remove("d-none");
  } else {
    anewpwdmsg.classList.add("d-none");
  }
  if (anewcpwd.value.trim() === "" || anewcpwd.value === null) {
    flag = false;
    anewconfirmpwdmsg.classList.remove("d-none");
  } else {
    anewconfirmpwdmsg.classList.add("d-none");
  }
  return flag;
}
function changepwdvalueValidation() {
  let flag = true;
  if (anewpwd.value !== anewcpwd.value) {
    flag = false;
    anewconfirmpwdmsg.classList.remove("d-none");
    anewconfirmpwdmsg.innerText = "Confirm Password must match with Password";
  } else {
    anewconfirmpwdmsg.classList.add("d-none");
  }
  return flag;
}
