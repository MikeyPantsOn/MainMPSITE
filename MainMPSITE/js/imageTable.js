window.onload = function () {

    var x = document.getElementsByClassName("tdata");
    for (var i = 0; i < x.length; i++) {
        console.log(x[i].src);
        x[i].addEventListener("click", function () { moveToPage(x[i]); });
    }
}



function setMainImage(x) {
    var obj = document.getElementById("mainImage");
    obj.src = x.src;
}

function moveToPage(x) {
    var src = x.src;
    var which = src.substring(src.lastIndexOf("/") + 1, src.lastIndexOf("."));
    console.log(which);
    document.location.href = `./${which}`;
}