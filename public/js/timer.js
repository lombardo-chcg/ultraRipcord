var url = window.location.href;
var params = url.split('=');

minutes = Number(params[1]);
redirectTime = (minutes * 60) * 1000;
redirectURL = "http://localhost:9393/";

function timedRedirect() {
  setTimeout("location.href = redirectURL;",redirectTime);
}
timedRedirect()
