<#import "blocks/template.ftlh" as t>
<@t.template user>
<h1 style="text-align: center">Редактирование статьи</h1>
<hr>
<div class="mb-3" >
  <form action="/post/edit/${post.id}" method="post">
    <div class="form-group">
      <label for="title">Название статьи</label>
      <input type="text" value="${post.title}" required class="form-control"
             id="title" name="title">
    </div>
    <div class="form-group">
      <label for="anons">Описание статьи</label>
      <input type="text" value="${post.anons}" required class="form-control"
             id="anons" name="anons">
    </div>
    <div class="form-group">
      <label for="fullText">Текст</label>
      <textarea rows="20" required class="form-control" id="fullText" name="fullText">${post.fullText}</textarea>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" style="width: 100%" class="btn btn-dark">Подтвердить</button>
  </form>
</div>
</@t.template>