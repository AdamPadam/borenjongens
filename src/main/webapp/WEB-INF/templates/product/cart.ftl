<#include "../main-template.ftl"/>
<#include "../navbar.ftl"/>

<#macro content>
    <@navbar isAuth "shop"/>

    <div class="container-fluid mt-5 mb-5">
        <div class="row g-2">
            <div class="col-md-9">
                <div class="row g-2">

                    <ul class="list-group">
                        <#list products as product>
                            <li class="list-group-item">
                                <div class="row">
                                    <div class="col-3 text-primary fw-bold mx-2">${product.name}</div>
                                    <div class="col-3 text-info mx-4">${product.price} ₽</div>
                                    <form class="col-3" method="post"
                                          action="/cart/${product.id}/remove">
                                        <input id="id" name="id" value="${product.id}" hidden>
                                        <button class="btn btn-outline-light">
                                            <img src="/resources/images/cancel.svg" width="20" height="20"
                                                 class="d-inline-block align-top" alt="">
                                        </button>
                                    </form>
                                </div>
                            </li>
                        <#else>
                            <h4 class="p-5"> Корзина пуста :( </h4>
                        </#list>
                    </ul>

                </div>
            </div>
        </div>
    </div>

</#macro>
<@main title="Магазин"/>
