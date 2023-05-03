<#import "blocks/template.ftlh" as t>
<@t.template user>
<div class="container mt-5">
    <h1>
        Статьи на свободную тему
    </h1>
</div>

<div class="card-columns">
    <#list posts as post>
    <a href="/blog/${post.id}" class="product-link">
        <div class="card text-white bg-dark my-3 product">
            <div class="card-body">
                <h5 class="card-title">${post.title}</h5>
                <p class="card-text">${post.anons}</p>
            </div>

        </div>
    </a>
    <#else>
    <h1 style="text-align: center">Не найдено</h1>
</#list>
</div>
</@t.template>