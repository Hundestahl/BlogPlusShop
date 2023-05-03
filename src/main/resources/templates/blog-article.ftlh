<#import "blocks/template.ftlh" as t>
<@t.template user>

<hr>
<p><h2 style="text-align: center">${post.title}</h2></p>
<p style="text-align: center">${post.fullText}</p>
<hr>
<p style="text-align: right"> Автор:
  <a href="/user/${authorPost.id}">
    <img src="/static/images/avatar.png" alt="mdo" width="32" height="32" class="rounded-circle"> ${authorPost.name}
  </a>
</p>
</@t.template>