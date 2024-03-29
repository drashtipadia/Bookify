const form = document.getElementById("addcategory");
const category = document.getElementById("newcategory");
const msg = document.getElementById("addcategorymsg");
form.addEventListener("submit", function (e) {
  if (blankvalidation() === true && valuevalidation() === true) {
  } else {
    e.preventDefault();
  }
});
function blankvalidation() {
  let flag = true;
  if (category.value.trim() === "" || category.value === null) {
    flag = false;
    msg.classList.remove("d-none");
  } else {
    msg.classList.add("d-none");
  }
  return flag;
}
function valuevalidation() {
  let temp = true;
  if (category.value.match(/^[A-Za-z\s]+$/) == null) {
    temp = false;
    msg.classList.remove("d-none");
    msg.innerText = "Give proper value";
  } else {
    msg.classList.add("d-none");
  }
  return temp;
}

function showUpdate(id) {
  document.getElementById("editRowcategory" + id).classList.add("d-none");
  document.getElementById("editcategoryForm" + id).classList.remove("d-none");

}

function cancelEdit(id) {
  document.getElementById("editRowcategory" + id).classList.remove("d-none");
  document.getElementById("editcategoryForm" + id).classList.add("d-none");
}

function blankvalid(id) {
  var catname = document.getElementById("cat_name" + id);
  var msgcat=document.getElementById("editcatmsg"+ id);
  if (catname.value == "") {
	  msgcat.classList.remove("d-none");
   // alert("please enter value");
    return false;
  } else {
    return true;
  }
}
