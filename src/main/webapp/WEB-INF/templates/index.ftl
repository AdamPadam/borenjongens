<#include "main-template.ftl"/>
<#include "navbar.ftl"/>

<#macro content>
    <@navbar isAuth "main"/>
    <section class="testimonial px-8 py-5 align-content-center text-center" id="testimonial">
    <div class="cover-container d-flex h-100 p-5 mx-auto flex-column">

        <main role="main" class="inner cover">
            <h1 class="cover-heading">Кофейня с зерном собственной обжарки</h1>
            <p class="lead">Мы верим, что хороший кофе не должен быть дорогим. Каждую неделю мы радуем своих гостей исключительным и ароматным напитком собственной обжарки. Команда обжарщиков и бариста, настоящие профессионалы, призеры чемпионатов и турниров. Будьте уверенны, что ваш напиток в надежных руках. Независимо от того находитесь вы в одиночестве или с друзьями откройте для себя гостеприимство Borenjongens.</p>
            <p class="lead">
                <a href="/shop/products" class="btn btn-lg btn-primary">Попробовать</a>
            </p>
        </main>
    </div>
    </section>
</#macro>
<@main title="Boerejongens"/>
