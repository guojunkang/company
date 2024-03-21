window.onload=function(){
    var boxs = document.querySelectorAll(".ax_wrap");
    console.log(boxs)
    for (var i=0;i<boxs.length;i++){
        boxs[i].onmouseover = function (){
            console.log(boxs[i])
            boxs[i].childNodes('.ax_box_bg').style.opacity = '0.4';
        }
    }
}
