//锚点返回顶部
var back = document.getElementsByClassName("in-click")[0];
document.onmousewheel = function () {
  console.log(pageYOffset)
  if (pageYOffset > 200) {
    back.style.display = "block";
  } else {
    back.style.display = "none";
  }
};

back.onclick = () => {
  back.style.display = "none";
}