<#import "blocks/template.ftlh" as t>
<@t.template user>
<main>
    <div class="block-text">
        <h4>Информативный текст</h4>
    </div>
    <div class="block-foto">
        <img src="/static/images/blueImage.jpg"
             style="border:2px solid black; border-radius: 20px" height="480">
    </div>
    <div class="block-text py-5">
        <h6>Текст с описанием ноутбука.</h6>
        <p> Ноутбук - это портативное устройство, которое позволяет работать с электронными данными в любом месте и в
            любое время. Он состоит из различных компонентов, таких как процессор, оперативная память, жесткий диск,
            монитор, клавиатура и тачпад.</p>
        <p> Ноутбуки бывают разных размеров - от компактных моделей с диагональю экрана от 11 до 13 дюймов до более
            крупных моделей с диагональю экрана от 15 до 17 дюймов. Также существуют разные типы ноутбуков, такие как
            ультрабуки, игровые и рабочие станции.</p>
    </div>
</main>
</@t.template>