<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>جرب الفلتر الجديد</title>
  <style>
    body {
      margin: 0;
      background: black;
      overflow: hidden;
      color: white;
      text-align: center;
      font-family: sans-serif;
    }
    video {
      width: 100vw;
      height: 100vh;
      object-fit: cover;
    }
    #overlay {
      position: absolute;
      top: 0; left: 0;
      width: 100vw;
      height: 100vh;
      display: none;
      background: rgba(0, 0, 0, 0.9);
      color: red;
      font-size: 2em;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      z-index: 10;
    }
    #scary-image {
      width: 300px;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

<video id="video" autoplay></video>
<div id="overlay">
  <img id="scary-image" src="https://i.imgur.com/3U4k2UI.png" alt="Ghost">
  <p>تم رصد كيان غير بشري خلفك.</p>
</div>

<audio id="scream" src="https://www.myinstants.com/media/sounds/movie_1.mp3"></audio>

<script>
  const video = document.getElementById('video');
  const overlay = document.getElementById('overlay');
  const scream = document.getElementById('scream');

  navigator.mediaDevices.getUserMedia({ video: true })
    .then(stream => {
      video.srcObject = stream;
    });

  setTimeout(() => {
    overlay.style.display = 'flex';
    scream.play();
  }, 5000);
</script>

</body>
</html>
