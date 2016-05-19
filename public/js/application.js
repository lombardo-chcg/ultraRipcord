var dbPlaylist = '';
var userInterval;

$(document).ready(function() {
  // // grab form input from user
  // $('#time-form').on('submit', function(event) {
  //   // event.preventDefault(event)
  //   minutes = $('#time-form input').val()
  //   minutes = Number(minutes)
  //   userInterval = (minutes * 60) * 1000
  //   $('#input-form').remove()
  // });

    // dial up server for new content
    request = $.ajax({
      url: '/content_boss/get_content'
    });
    request.done(function(response){
      dbPlaylist = response.playlist;
    });
});


var url = window.location.href;
var params = url.split('=');
minutes = Number(params);
userInterval = (minutes * 60) * 1000;
// var time_request = params.split('=');
// alert(params[1]);
// 2. This code loads the IFrame Player API code asynchronously.
var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// 3. This function creates an <iframe> (and YouTube player)
//    after the API code downloads.
var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    height: '200',
    width: '200',
    // videoId: 'wzjWIxXBs_s',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}



// 4. The API will call this function when the video player is ready.
function onPlayerReady(event) {
  player.loadPlaylist({
    list: dbPlaylist,
    listType: 'playlist',
  });
  event.target.playVideo();
}

// 5. The API calls this function when the player's state changes.
//    The function indicates that when playing a video (state=1),
//    the player should play for six seconds and then stop.
var done = false;
function onPlayerStateChange(event) {
  if (event.data == YT.PlayerState.PLAYING && !done) {
    // setTimeout(stopVideo, 6000);
    done = true;
  }
}
function stopVideo() {
  player.stopVideo();
}

// redirect the browser after a lenght of time
redirectTime = userInterval;
redirectURL = "http://localhost:9393/";
function timedRedirect() {
  setTimeout("location.href = redirectURL;",redirectTime);
}
// timedRedirect()

// clock
// function startTime() {
//     var today = new Date();
//     var h = today.getHours();
//     var m = today.getMinutes();
//     var s = today.getSeconds();
//     m = checkTime(m);
//     s = checkTime(s);
//     document.getElementById('txt').innerHTML =
//     h + ":" + m + ":" + s;
//     var t = setTimeout(startTime, 500);
// }
// function checkTime(i) {
//     if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
//     return i;
// }
