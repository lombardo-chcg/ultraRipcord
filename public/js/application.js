var ytURL = '';
var userInterval;
var contentType;

$(document).ready(function() {
    // dial up server for new content
  request = $.ajax({
    url: '/content_boss/get_content'
  });
  request.done(function(response){
    ytURL = response.url;
    contentType = response.content_type
    $('.content-description').append(response.description)
  });

  var tag = document.createElement('script');
  tag.src = "https://www.youtube.com/iframe_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
});

// 2. This code loads the IFrame Player API code asynchronously.


// 3. This function creates an <iframe> (and YouTube player)
//    after the API code downloads.
var player;

function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    height: '200',
    width: '200',
    // if (contentType == 'track') {
      videoId: 'wzjWIxXBs_s',
    // }
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}

// 4. The API will call this function when the video player is ready.
onPlayerReady = function(event) {

  // if (contentType == 'track' ) {
  //   player.loadVideoById( {videoId: ytURL} );
  // } else if (contentType == 'playlist') {
  //   player.loadPlaylist({
  //     list: ytURL,
  //     listType: contentType
  //   });
  // }
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
