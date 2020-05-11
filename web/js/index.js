var wid= document.documentElement.clientWidth;
var change=(wid-1250)/2;
window.onload = function () {
  var nav = document.getElementsByTagName('nav')[0];
    nav.style.paddingLeft=change+'px';
    nav.style.paddingRight=change+'px';
}

var hisLi = document.getElementsByClassName("history-choose");
var conts = document.getElementsByClassName("history-conts");
var index = 0;

for(var i = 0; i < hisLi.length; i++){
    hisLi[i].index = i;
    hisLi[i].onclick = function() {
        for(var i = 0; i < hisLi.length; i++) {
            hisLi[i].className = "history-choose";
        }
        this.className = "history-choose active";
        for(var j = 0; j < conts.length; j++) {
            conts[j].className = "history-conts";
        }
        conts[this.index].className = "history-conts on";
    }        
}

