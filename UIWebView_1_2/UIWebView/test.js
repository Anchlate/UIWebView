

function setImageClickFunction(){
    var imgs = document.getElementsByTagName("img");
    for (var i=0;i<imgs.length;i++){
        var src = imgs[i].src;
//        imgs[i].setAttribute("onClick","click(src)");
        imgs[i].onClick = click(src);
    }
    document.location = imageurls;
}

function click(imagesrc){
    var url="ClickImage:"+imagesrc;
//    document.location = url;
    window.location.href=url;
}