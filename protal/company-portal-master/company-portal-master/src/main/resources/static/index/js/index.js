window.onload=function(){

	var boxs = document.querySelectorAll(".ax_wrap");
	for (var i=0;i<boxs.length;i++){
		boxs[i].onmouseover = function (){
			this.childNodes[1].style.opacity = 0.4;
			this.style.boxShadow = '0px 0px 10px rgb(109 43 236 / 60%)';
		}
		boxs[i].onmouseout = function (){
			this.childNodes[1].style.opacity = 0.16;
			this.style.boxShadow = 'none';
		}
	}
	var time;
	var data;

	let leftBtn = document.getElementById('ax_leftBtn');
	leftBtn.onmouseover = function (){
		data =0.3;
		move('ax_leftBtn',1,0.1)
		console.log(leftBtn)
	}
	leftBtn.onmouseout = function (){
		data = 1;
		move('ax_leftBtn',0.3,-0.1)
	}
	let rightBtn = document.getElementById('ax_rightBtn');
	rightBtn.onmouseover = function (){
		data =0.3;
		move('ax_rightBtn',1,0.1)
	}
	rightBtn.onmouseout = function (){
		data = 1;
		move('ax_rightBtn',0.3,-0.1)
	}

	function move(box,e,speed){
		var div = document.getElementById(box);
		console.log(div)
		clearInterval(time);
		time = setInterval(function(){
			if(parseFloat(data.toFixed(2)) == e){
				clearInterval(time);
			}
			else{
				div.style.opacity = data + speed;
				data = data+speed;
			}
		},60)
	}


	// let value = getCookie('signupForm');
	// let arr = document.getElementsByClassName("s6");
	// let arr1 = document.getElementsByClassName("s7");
	//
	// if(value == "true"){
	// 	arr[0].style.display = 'none';
	// 	arr1[0].style.display = 'block';
	// }else {
	// 	arr[0].style.display = 'block';
	// 	arr1[0].style.display = 'none';
	// }

	// var aPicLi=document.getElementById('pic_list').getElementsByTagName('li');
	// var aTextLi=document.getElementById('text_list').getElementsByTagName('li');
	// var aIcoLi=document.getElementById('ico_list').getElementsByTagName('li');
	// var oIcoUl=document.getElementById('ico_list').getElementsByTagName('ul')[0];
	// var oPrev=document.getElementById('btn_prev');
	// var oNext=document.getElementById('btn_next');
	// var oDiv=document.getElementById('box');
	// var i=0;
	// var iNowUlLeft=0;
	// var iNow=0;
	//
	// oPrev.onclick=function(){
	// 	if(iNowUlLeft>0){
	// 		iNowUlLeft--;
	// 		oUlleft();
	// 	}
	// 	oPrev.className=iNowUlLeft==0?'btn':'btn showBtn';
	// 	oNext.className=iNowUlLeft==(aIcoLi.length-7)?'btn':'btn showBtn';
	// }
	//
	// oNext.onclick=function(){
	// 	if(iNowUlLeft < aIcoLi.length-7){
	// 		iNowUlLeft++;
	// 		oIcoUl.style.left=-aIcoLi[0].offsetWidth*iNowUlLeft+'px';
	// 	}
	// 	oPrev.className=iNowUlLeft==0?'btn':'btn showBtn';
	// 	oNext.className=iNowUlLeft==(aIcoLi.length-7)?'btn':'btn showBtn';
	// }
	//
	// for(i=0;i<aIcoLi.length;i++){
	// 	aIcoLi[i].index=i;
	// 	aIcoLi[i].onclick=function(){
	// 		if(iNow==this.index){
	// 			return false;
	// 		}
	// 		iNow=this.index;
	// 		tab();
	// 	}
	// }
	//
	// function tab(){
	// 	for(i=0;i<aIcoLi.length;i++){
	// 		aIcoLi[i].className='';
	// 		aPicLi[i].style.filter='alpha(opacity:0)';
	// 		aPicLi[i].style.opacity=0;
	// 		aTextLi[i].getElementsByTagName('h2')[0].className='';
	// 		miaovStopMove( aPicLi[i]);
	// 	}
	// 	aIcoLi[iNow].className='active';
	// 	//aPicLi[this.index].style.filter='alpha(opacity:100)';
	// 	//aPicLi[this.index].style.opacity=1;
	// 	miaovStartMove(aPicLi[iNow],{opacity:100},MIAOV_MOVE_TYPE.BUFFER);
	// 	aTextLi[iNow].getElementsByTagName('h2')[0].className='show';
	// }
	//
	// function oUlleft(){
	// 	oIcoUl.style.left=-aIcoLi[0].offsetWidth*iNowUlLeft+'px';
	// }
	//
	// function autoplay(){
	// 	iNow++;
	// 	if(iNow>=aIcoLi.length){
	// 		iNow=0;
	// 	}
	// 	if(iNow<iNowUlLeft){
	// 		iNowUlLeft=iNow;
	// 	}else if(iNow>=iNowUlLeft+7){
	// 		iNowUlLeft=iNow-6;
	// 	}
	// 	oPrev.className=iNowUlLeft==0?'btn':'btn showBtn';
	// 	oNext.className=iNowUlLeft==(aIcoLi.length-7)?'btn':'btn showBtn';
	// 	oUlleft();
	// 	tab();
	// }
	//
	// var time=setInterval(autoplay,3000);
	// oDiv.onmouseover=function(){
	// 	clearInterval(time);
	// }
	// oDiv.onmouseout=function(){
	// 	time=setInterval(autoplay,3000);
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

// function getCookie(cname){
// 	let name = cname + "=";
// 	let ca = document.cookie.split(";");
// 	console.log(ca)
// 	for (let i=0; i< ca.length; i++){
// 		let c = ca[i].trim();
// 		if(c.indexOf(name) == 0){
// 			return c.substring(name.length, c.length);
// 		}
// 	}
// }