window.onload = function () {
    localStorage.clear();
    localStorage.setItem('Animals', JSON.stringify(getItems()));
}

function getItems() {
    var values = document.getElementsByClassName("info");
    var list = {
        "Results": [{

        }]};
    for (var i = 0; i < values.length; i++) {
        list[i] = values[i].children[0].id;
    }
    console.log(list);
    return list;
}


function highlightInfo(x) {
    x = x.href.toString();
    console.log(x.substring(x));
    //document.getElementsById(x.href.prototype.substring(0, x.href.length)) += "infoPop";
}