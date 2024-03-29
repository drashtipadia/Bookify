const uchangepassform =document.getElementById("userchangepassform");
const uoldpass=document.getElementById("uoldpassword");
const uoldpassmsg=document.getElementById("uoldpasswordmsg");
const unewpass=document.getElementById("unewpassword");
const unewpassmsg=document.getElementById("unewpasswordmsg");
const ucpass=document.getElementById("unewcpassword");
const ucpassmsg=document.getElementById("uconpassmsg");
uchangepassform.addEventListener("submit", function (e) {
  if (passblankValidation() === true && valueValidation() === true) {
  } else {
    e.preventDefault();
  }
});

function passblankValidation() {
  let flag = true;
  if (uoldpass.value.trim() === "" || uoldpass.value == null) {
    flag = false;
    uoldpassmsg.classList.remove("d-none");
  } else {
    uoldpassmsg.classList.add("d-none");
  }
  if (unewpass.value.trim() === "" || unewpass.value == null) {
    flag = false;
    unewpassmsg.classList.remove("d-none");
  } else {
    unewpassmsg.classList.add("d-none");
  }
  if (ucpass.value.trim() === "" || ucpass.value == null) {
    flag = false;
    ucpassmsg.classList.remove("d-none");
  } else {
    ucpassmsg.classList.add("d-none");
  }
return flag;
}
function valueValidation() {
  let flag = true;

  if (unewpass.value !== ucpass.value) {
    flag = false;
    ucpassmsg.classList.remove("d-none");
    ucpassmsg.innerText = "Confirm Password not match with Password";
  } else {
    ucpassmsg.classList.add("d-none");
  }
  return flag;

}