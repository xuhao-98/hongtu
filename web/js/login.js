var index = 0;
var timer = null;
var $div = $('.loginbg img'); //获取背景图片div
timer = setInterval(auto, 5000);
auto();
//背景图片循环轮播,通过改变透明度实现
function auto() {
    index++;
    index = index > 2 ? 0 : index;
    $div.eq(index).animate({"opacity": "1"}, 1000).siblings().animate({"opacity": "0"}, 1000);
};


var sub=document.getElementById("submit");
function codeUser(){
    return codeLogin("user",/^[\w]{4,16}$/);
}
function codePwd(){
    return codeLogin("password",/^[\w]{6,20}$/);
}
function infoSub(){
   codeUser();
   codePwd();
    if(codePwd()&&codeUser()){
        return  codePwd()&&codeUser();
    }else{
        alert("您的用户名或者密码有误！");
    }
  
}

function codeLogin(name,reg){
    var ipts= document.getElementById(name);
    var oSpan = document.getElementById(name+"Span");
    console.log(oSpan)
    if (!ipts.value) {
        oSpan.innerHTML = '<i class="iconfont icon-warn" style="font-size:24px ; color:red"></i>';
        return false;
      } else if (reg.test(ipts.value)) {
        oSpan.innerHTML = '<i class="iconfont icon-dui"  style="font-size:24px; color:red"></i>';
        return true;
      } else {
        oSpan.innerHTML = '<i class="iconfont icon-warn"  style="font-size:24px ;color:red"></i>';
        return false;
      }
}