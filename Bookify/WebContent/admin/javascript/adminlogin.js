const aloginform = document.getElementById("adminloginform");
const aname = document.getElementById("adminname");
const anamemsg = document.getElementById("adnamemsg");
const apass = document.getElementById("adminpass");
const apassmsg=document.getElementById("adpassmsg");

aloginform.addEventListener("submit", function (e) {
  if (blankvalidation() === true) {  
  } else {
    e.preventDefault();  
  } 
});
function blankvalidation() {
  let flag = true;
  if (aname.value.trim() === "" || aname.value === null) {
    flag = false;
    anamemsg.classList.remove("d-none");
  } else {
    anamemsg.classList.add("d-none");
  }
  if (apass.value.trim() === "" || apass.value === null) {
    flag = false;
    apassmsg.classList.remove("d-none");
  } else {
    apassmsg.classList.add("d-none");
  }
  return flag;
}


