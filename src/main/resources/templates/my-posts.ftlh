<#import "blocks/template.ftlh" as t>
<@t.template user>
<h1 style="text-align: center">Мои статьи</h1>
<hr>
<div class="card-columns">
    <#list posts as post>
    <a href="/blog/${post.id}" class="product-link">
        <div class="card text-white bg-dark my-3 product">
            <div class="card-top">
                <p class="card-title">${post.title}</p>
            </div>
            <div class="card-body">
                <p class="card-text">${post.anons}</p>
            </div>
            <div class="card-footer">
                <form action="/post/edit/${post.id}" method="get" style="display:inline">
                    <button type="submit" class="btn btn-warning m-3">
                        Редактировать
                    </button>
                </form>
                <form action="/post/delete/${post.id}" method="post" style="display:inline">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <button type="submit" class="btn btn-danger m-3">
                        Удалить
                    </button>
                </form>

            </div>
        </div>
    </a>
    <#else>
    <h1 style="text-align: center">Статей не найдено</h1>
</#list>
</div>
</@t.template>