<!DOCTYPE HTML>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <style>
    * {
        margin: 0;
    }

    html, body {
        height: 100vh;
    }

    .bg-video {
        position: relative;
        padding-bottom: 0%;
        width: 100%;
        height: auto;
          }

    .container2 {
        width: 100%;
        height: auto;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        text-align: center;
        padding-top: 95%;
    }
    </style>
</head>
<body>
<main>
    <div class="background">
    </div>
    <video autoplay loop  class="bg-video" onloadstart="this.volume=0">
        <source src="videos/dog.mp4" type="video/mp4">
    </video>
    <div class="container2">
        <h1 class="fw-bolder">Да!</h1>
        <p class="fst-normal">
        <h3>Здесь написано приветствие пользователя.</h3></p>
        <p>
            <a href="/blog" class="btn btn-light">Статьи</a>
            <a href="/product" class="btn btn-dark">Товары</a>
        </p>
    </div>
</main>
</body>
</html>