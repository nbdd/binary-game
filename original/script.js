var total = 0;
var digitValues = [1,2,4,8];

function toggleBinary(elem){
    var digitPlace = elem.dataset.digit;
    var value = digitValues[parseInt(digitPlace)-1];
    elem.classList.toggle("digit-set");
    var isSet = elem.classList.contains("digit-set");
    if(isSet){
        total += value;
    }else{
        total -= value;
    }
    return false;
}

function submitEntry(){
    if(total === 10){
        var game = document.getElementById("game");
        game.classList.toggle("show-reward");
    }else{
        alert("Try Again!");
    }
}