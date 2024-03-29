// quantity update start
//alert("Hello")
function changeQty(id) {
	
    const qty = document.getElementById('qty' + id).value;
    window.location.href= './updatecart.jsp?id=' + id + '&quantity=' + qty;
}
// quantity update end