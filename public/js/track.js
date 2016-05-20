var ytURL = '';
var userInterval;
var contentType = ''

$(document).ready(function() {
    // dial up server for new content
    request = $.ajax({
      url: '/content_boss/get_content'
    });
    request.done(function(response){
      ytURL = response.url;
      contentType = response.content_type
    });
});

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
    // if (contentType == 'track') {
    //   videoId: 'wzjWIxXBs_s',
    // }
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}

// 4. The API will call this function when the video player is ready.
function onPlayerReady(event) {
  player.loadPlaylist({
    list: ytURL,
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
