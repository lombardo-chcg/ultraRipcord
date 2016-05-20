var player;
var done;
var tag;
var firstScriptTag;

$(document).ready(function() {
  // grab form input from user
  $('#time-form').on('submit', function(event) {
    event.preventDefault(event)
    minutes = $('#time-form input').val()
    minutes = Number(minutes)
    userInterval = (minutes * 60) * 1000
    $('#input-form').remove()

    request = $.ajax({
      url: '/content_boss/get_content'
    });

    request.done(function(response){
      console.log(response)
      ytURL = response.url;
      contentType = response.content_type
      $('.content-description').append(response.description)

      var tag = document.createElement('script');

      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

      // 3. This function creates an <iframe> (and YouTube player)
      //    after the API code downloads.

      function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
          height: '390',
          width: '640',
          videoId: 'M7lc1UVf-VE',
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
      }

      // 4. The API will call this function when the video player is ready.
      function onPlayerReady(event) {
        event.target.playVideo();
      }

      // 5. The API calls this function when the player's state changes.
      //    The function indicates that when playing a video (state=1),
      //    the player should play for six seconds and then stop.
      var done = false;
      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
          setTimeout(stopVideo, 6000);
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
    }); // ends request.done
  }); // ends time form submit listener
}); // end document ready
