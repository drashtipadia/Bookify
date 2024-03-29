// order validation start
const orderForm = document.getElementById("orderform");
const cname = document.getElementById("cname");
const cnamemsg = document.getElementById("cnamemsg");

const Cnumber = document.getElementById("Cnumber");
const Cnumbermsg = document.getElementById("Cnumbermsg");

const add1 = document.getElementById("address1");
const add1msg = document.getElementById("address1msg");

const cvv = document.getElementById("cvv");
const cvvmsg = document.getElementById("cvvmsg");

const cexpiry = document.getElementById("cexpiry");
const cexpirymsg = document.getElementById("cexpirymsg");


const city = document.getElementById("city");
const citymsg = document.getElementById("citymsg");

const state = document.getElementById("state");
const statemsg = document.getElementById("statemsg");

const phone = document.getElementById("phone");
const phonemsg = document.getElementById("phonemsg");

orderForm.addEventListener("submit",function(e){
    if(blankValidation() === true){
    }
    else{
        e.preventDefault();
    }
});

function blankValidation() {
    let flag = true;

    if(add1.value.trim() === "" || add1.value == null){
        flag = false;
        add1msg.classList.remove("d-none");
    }
    else{
        add1msg.classList.add("d-none");
    }
    
    if(city.value.trim() === "" || city.value == null){
        flag = false;
        citymsg.classList.remove("d-none");
    }
    else{
        citymsg.classList.add("d-none");
    } 
    if(state.value.trim() === "" || state.value == null){
        flag = false;
        statemsg.classList.remove("d-none");
    }
    else{
        statemsg.classList.add("d-none");
    } 
    if(phone.value.trim() === "" || phone.value == null){
        flag = false;
        phonemsg.classList.remove("d-none");
    }
    else if(phone.value.match(/^[0-9]+$/) == null)
    {
         flag=false;
         phonemsg.classList.remove("d-none");
         phonemsg.innerText="Only numeric value enter";
    }else if(phone.value.length !== 10)
    {
        flag=false;
        phonemsg.classList.remove("d-none");
        phonemsg.innerText="Must have 10 digit"; 
    }
    else{
        phonemsg.classList.add("d-none");
    }
    return flag;
}
// order validation end

// option card,COD hide and show function call start
function paymentShowCOD() {
    const cardDetail = document.getElementById("cardDetail");
    const cashDetail = document.getElementById("cashDetail");
    
    cardDetail.classList.add("d-none");
    cashDetail.classList.remove("d-none");
}
function paymentShow() {
    const cardDetail = document.getElementById("cardDetail");
    const cashDetail = document.getElementById("cashDetail");

    orderForm.addEventListener("submit",function(e){
        if(cardValidation() === true){
        }
        else{
            e.preventDefault();
        }
    });
    cardDetail.classList.remove("d-none");
    cashDetail.classList.add("d-none");
}

function cardValidation()
{  
    let flag = true;
   if(cname.value.trim() === "" || cname.value == null){
        flag = false;
        cnamemsg.classList.remove("d-none");
    }else if(cname.value.match(/^[A-Za-z\s]+$/) == null)
    {
        flag=false;
        cnamemsg.classList.remove("d-none");
        cnamemsg.innerText="Give Proper name";
    } 
    else{
        cnamemsg.classList.add("d-none");
    }
    if(Cnumber.value.trim() === "" || Cnumber.value == null){
        flag = false;
        Cnumbermsg.classList.remove("d-none");
    }
    else  if(Cnumber.value.match(/^[0-9]+$/) == null)
    {
         flag=false;
         Cnumbermsg.classList.remove("d-none");
         Cnumbermsg.innerText="Only numeric value enter";
    }else if(Cnumber.value.length !== 16)
    {
        flag=false;
        Cnumbermsg.classList.remove("d-none");
        Cnumbermsg.innerText="Must have 16 number"; 
    }else
    {
         Cnumbermsg.classList.add("d-none");
    }
    
    if(cvv.value.trim() === "" || cvv.value == null){
        flag = false;
        cvvmsg.classList.remove("d-none");
    }
    else if(cvv.value.length !==3 || cvv.value.match(/^[0-9]+$/) == null)
    {
        flag=false;
        cvvmsg.classList.remove("d-none");
        cvvmsg.innerText="Must 3 number";
    }
    else{
        cvvmsg.classList.add("d-none");
    }
    if(cexpiry.value.trim() === "" || cexpiry.value == null){
        flag = false;
        cexpirymsg.classList.remove("d-none");
    }
    else{
        cexpirymsg.classList.add("d-none");
    }
    return flag;
}

window.addEventListener("load", function() {
    var mydate = new Date();
    mydate.setDate(mydate.getDate() + 90);
    var date = ("0" + mydate.getDate()).slice(-2);
    var month = ("0" + (mydate.getMonth())).slice(-2); 
    var year = mydate.getFullYear();
    document.getElementById("cexpiry").setAttribute("max", year + "-" + month + "-" + date);
   
});
