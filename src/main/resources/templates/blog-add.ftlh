<#import "blocks/template.ftlh" as t>
<@t.template user>
<h1 style="text-align: center">Добавление статьи</h1>
<hr>

<div class="mb-3" >
  <form action="/blogAdd" method="post">
     <div class="form-group">
      <label for="postName">Название статьи</label>
      <input type="text" required class="form-control"
             id="postName" name="title">
    </div>
    <div class="form-group">
     <label for="postAnons">Описание статьи</label>
     <input type="text" required class="form-control"
            id="postAnons" name="anons">
    </div>
   <div class="form-group">
    <label for="fullText">Текст</label>
    <textarea rows="20" required class="form-control" id="fullText" name="fullText"></textarea>
   </div>
   <input type="hidden" name="_csrf" value="${_csrf.token}"/>
   <button type="submit" style="width: 100%" class="btn btn-dark">Опубликовать</button>
  </form>
</div>

</@t.template>