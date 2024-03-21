window.onload=function(){

	// let value = getCookie('signupForm');
	// let arr = document.getElementsByClassName("s6");
	// let arr1 = document.getElementsByClassName("s7");
	//
	//
	// if(value == "true"){
	// 	arr[0].style.display = 'none';
	// 	arr1[0].style.display = 'block';
	// }else {
	// 	arr[0].style.display = 'block';
	// 	arr1[0].style.display = 'none';
	// }


}

function getCookie(c_name){
	let c_start,c_end;
	if(document.cookie.length>0){
		c_start = document.cookie.indexOf(c_name + "=")
		if(c_start != -1){
			c_start = c_start + c_name.length + 1
			c_end = document.cookie.indexOf(";",c_start)
			if(c_end == -1){
				c_end = document.cookie.length
			}
			return unescape(document.cookie.substring(c_start,c_end))
		}
	}
	return ""
}
