<#macro template user>
    <!DOCTYPE HTML>
    <html lang="ru">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/static/css/style.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
              crossorigin="anonymous">
        <title>Hundestahl</title>

    </head>
    <body style="background-color: Lavender;">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
        <div class="container-fluid">
            <a href="/">
                <span class="navbar-brand mb-0 h1">Hundestahl</span>
            </a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/home">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/blog">Статьи</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/blogAdd">Добавить статью</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/product">Товары</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">Об авторе</a>
                    </li>
                </ul>
            </div>
            <#if user.email??>
                <div class="dropdown text-end">
                    <a href="/profile">
                        <img src="/static/images/avatar.png" alt="mdo"
                             width="32" height="32" class="rounded-circle">
                    </a>
                </div>
            <#else>
                <button class="btn btn-light my-2 my-sm-0" type="button"
                        onclick="window.location.href = '/login'">
                    Войти
                </button>
            </#if>

        </div>
    </nav>

    <div class="container mt-4">
        <#nested/>
    </div>

    <footer class="text-muted py-5" style="background-color: #c1c1ff; min-height: calc(30vh - 0vh); margin-top:350px;">
        <div class="container">
            <p class="float-end mb-1 text-right">
                <a href="#">ВВЕРХ!</a>
            <div class="float-end mb-1 text-right" style="font-size: 0.7em;">Singen sie Blumen der kindlichen Ruh,
                <br>Käfer und Vögel und Tierchen dazu;
                <br>Aber du wachest, wir treten herein,
                <br>Bringen was Ruhiges, bringen den Stein.
            </div>
            </p>
            <p class="mt-n4">Что нового? <a href="/">Главная страница</a> или <a href="https://t.me/Hundestahl">моя страница</a>.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    </body>
    </html>
</#macro>