
var navClick=document.getElementsByClassName("nav-list-click");
var index=0;

for(var i=0;i<navClick.length;i++){
  navClick[i].i=i;
  navClick[i].onmouseenter=function (){
    navClick[index].className="nav-list-click";
    console.log(this.i)
    index=this.i;                   
    navClick[index].className="nav-list-click on";
  }
}