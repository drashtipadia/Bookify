const fform = document.getElementById("fform");
const feedname = document.getElementById("feedname");
const fnamemsg = document.getElementById("fnamemsg");
const femail = document.getElementById("femail");
const femailmsg = document.getElementById("femailmsg");
const feedback = document.getElementById("feedback");
const feedbackmsg = document.getElementById("feedbackmsg");

fform.addEventListener("submit", function (e) {
  if (fblankValidation() === true) {
  } else {
    e.preventDefault();
  }
});
function fblankValidation() {
  let flag = true;
  if (feedname.value.trim() === "" || feedname.value == null) {
        flag = false;
        fnamemsg.classList.remove("d-none");
      } else {
        fnamemsg.classList.add("d-none");
      }
  if (femail.value.trim() === "" || femail.value == null) {
    flag = false;
    femailmsg.classList.remove("d-none");
  } else {
    femailmsg.classList.add("d-none");
  }
  if (feedback.value.trim() === "" || feedback.value == null) {
        flag = false;
        feedbackmsg.classList.remove("d-none");
      } else {
        feedbackmsg.classList.add("d-none");
      }
   return flag;
}
