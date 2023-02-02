window.onload = function () {

    setImages();
}

function setImages() {
    var pnstring = localStorage.getItem('Animals');
    var picturesNames = JSON.parse(pnstring);
    console.log(typeof picturesNames);
    var elems = document.getElementsByClassName("tdata");
    console.log(elems.length);
    for (var i = 0; i < elems.length; i++) {
        elems[i].src = "../images/" + picturesNames[i] + ".png";
        console.log("../images/" + picturesNames[i] + ".png");
    }
}

function setMainImage(x) {
    var obj = document.getElementById("mainImage");
    obj.src = x.src;
}

function moveToPage(x) {
    var src = x.src;
    var which = src.substring(src.lastIndexOf("/")+1, src.lastIndexOf("."));
    document.location.href = `https://en.wikipedia.org/wiki/${which}`;
}