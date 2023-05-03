<#import "blocks/template.ftlh" as t>
<@t.template user>

<main>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Главная страница!</h1>
                <p class="lead text-muted">Здесь написано что-то умное.</p>
                <p>
                    <a href="/product" class="btn btn-dark my-2">К товарам</a>
                    <a href="/blog" class="btn btn-light my-2">К статьям</a>
                </p>
            </div>
        </div>
    </section>

    <div class="album py-5 bg-light" style="border-radius: 20px">
        <div class="container align-middle" style="margin: 0 auto; text-align:center">
            <img src="/static/images/animalImage.jpg"
                 style="border:2px solid black; border-radius: 10px" height="360">
            <img src="/static/images/blueImage.jpg"
                 style="border:2px solid black; border-radius: 10px" height="223">
            <img src="/static/images/blackImage.jpg"
                 style="border:2px solid black; border-radius: 10px" height="138">
            <img src="/static/images/blueImage.jpg"
                 style="border:2px solid black; border-radius: 10px" height="223">
            <img src="/static/images/animalImage.jpg"
                 style="border:2px solid black; border-radius: 10px" height="360">
        </div>
    </div>
</main>
</@t.template>

