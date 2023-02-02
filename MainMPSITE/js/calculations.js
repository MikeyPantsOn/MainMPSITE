var max = 25;

var calculationsAmount = 5;
var initialCalculationsAmount = calculationsAmount;
var calculationsAnswers = [];
var signatures = [];
var currentSignature = 0;

window.onload = function () {
    load();
};
function load() {
    document.getElementById("calculations").innerHTML = "";
    document.getElementById("calsAmount").value = calculationsAmount;

    placeCalculations();
    placeNumbers();

}

function setCalsAmount() {
    var cals = document.getElementById("calsAmount");
    var res = document.getElementById("badCalsAmount");
    calculationsAmount = cals.value;
    if (calculationsAmount < 2 && cals.value != "") { res.innerHTML = "Bad Value! Value Must Be Above 2!"; calculationsAmount = initialCalculationsAmount; }

    load();

}

function placeCalculations() {
    var cals = document.getElementById("calculations");
    
    for (var i = 0; i < calculationsAmount; i++) {
        var signature = getSignature();
        currentSignature++;
        cals.innerHTML += `<div class="calculation">
                        <input type="number" id="cal${i}1" disabled /> ${signature} <input type="number" id="cal${i}2" disabled /> = <input class="answer" type="text" id="cal${i}ans" />
                        <p id="res${i}"></p>
                        </div>`;
    }
}

function placeNumbers() {
    for (var i = 0; i < calculationsAmount; i++) {
        var num1 = Math.floor(Math.random() * max) + 1;
        var num2 = Math.floor(Math.random() * max) + 1;
        if (num1 > num2) {
            document.getElementById(`cal${i}1`).value = num1;
            document.getElementById(`cal${i}2`).value = num2;
        } else {
            document.getElementById(`cal${i}1`).value = num2;
            document.getElementById(`cal${i}2`).value = num1;
        }
        calculateAnswers(num1, num2, i)
    }
}

function calculateAnswers(x, y, i) {
    if (signatures[i] == "+") (calculationsAnswers[i] = x + y);
    if (signatures[i] == "-") (calculationsAnswers[i] = x - y);
    if (signatures[i] == "*") (calculationsAnswers[i] = x * y);
    if (signatures[i] == "/") (calculationsAnswers[i] = x / y).toFixed(2);
}


function checkAnswers() {
    for (var i = 0; i < calculationsAmount; i++) {
        var answer = document.getElementById(`cal${i}ans`);
        var res = document.getElementById(`res${i}`);
        if (answer.value == null || answer.value == "") {
            res.innerHTML = `Please write an answer`;
            continue;
        }
        console.log(22 / 1);
        if (answer.value == calculationsAnswers[i]) res.innerHTML = "Correct!";
        else res.innerHTML = `Wrong by ${calculationsAnswers[i] - answer.value}`;
    }
}


function getSignature() {
    var rand = Math.random() * 4;

    if (rand <= 1) { signatures[currentSignature] = "+"; return "+"; }
    if (rand <= 2) { signatures[currentSignature] = "-"; return "-"; }
    if (rand <= 3) { signatures[currentSignature] = "*"; return "*"; }
    if (rand <= 4) { signatures[currentSignature] = "/"; return ":"; }
    
}