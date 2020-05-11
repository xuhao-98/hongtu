var XMLHttpReq;

function createXMLHttpRequest() //解析函数
{
  if (window.XMLHttpRequest) //非IE 
  {
    XMLHttpReq = new XMLHttpRequest(); //ajax的核心类
  } else if (window.ActiveXObject) //IE游览器的解析方法
  {
    try {
      XMLHttpReq = new ActiveXObject("Msxm12.XMLHTTP");
    } catch (e) {
      try {
        XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (e) {}
    }
  }
}

function send(url) {

  createXMLHttpRequest();

  url = url + "?namek=" + document.getElementById("name").value;

  XMLHttpReq.open("get", url);
  XMLHttpReq.onreadystatechange = proce;
  XMLHttpReq.send(null);
}

function proce() {
  if (XMLHttpReq.readyState == 4) {
    if (XMLHttpReq.status == 200) {
      var str = XMLHttpReq.responseText;
      document.getElementById("result").innerHTML = str;
    } else {
      window.alert(XMLHttpReq.status);
    }
  }
}