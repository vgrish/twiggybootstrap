{% extends 'template|twbt.main' %}

{% block content %}
<div class='theme-container container'>

    {{ runSnippet("pdoCrumbs@TwbtPdoCrumbs", {
    "showAtHome": 0,
    "showHome": 1
    })
    }}

    <div class="row">

        {% block main %}
        <div id='content' class='main col-md-8'>
            <h3>{{ modx.resource.longtitle ?: modx.resource.pagetitle }}</h3>

            {{ runSnippet("!pdoPage@TwbtPdoPage", {
            "element": "getTickets",
            "parents": modx.resource.id,
            "limit": 5,
            "tpl":"twbt.tickets.list"
            })
            }}

            {{ getPlaceholder('page.nav') }}

        </div>
        {% endblock %}

        {% block sidebar %}
        <div id='sidebar' class='col-md-4'>

            <div class='theme-sidebar-section theme-sidebar-auth'>
                <h4 class='title'>Авторизация</h4>
                <p class='alert alert-block alert-warning'>
                    <big>
                        <b>
                            <a href='https://#/login?action=remote/auth' rel='nofollow'>Вход</a>
                        </b>
                    </big>
                    <br>
                    <small>Чтобы не плодить учетные записи на сервисах, мы сделали авторизацию через один общий
                        сервер.
                    </small>
                </p>
            </div>

            <div class='theme-sidebar-section theme-sidebar-search'>
                <form action='/search' method='get' id='mse2_form'>
                    <div class='form-group label-floating is-empty'>
                        <label class='control-label' for='mse2_form'>Поиск</label>
                        <div class='input-group'>
                            <input type='text' id='mse2_form' name='query' class='form-control'>
        <span class='input-group-btn'>
                  <button type='submit' class='btn btn-default'><i class='glyphicon glyphicon-search'></i></button>
              </span>
                        </div>
                        <p class='help-block'>введите поисковый запрос</p>
                        <span class='material-input'></span>
                    </div>

                </form>
            </div>


            {{ runSnippet("AjaxSnippet@TwbtAjaxSnippet", {
            "as_target": ".theme-sidebar-content-tab1",
            "snippet": "TicketLatest",
            "action": "tickets",
            "tpl":"twbt.tickets.ticket.sidebar.latest"
            })
            }}

            {{ runSnippet("AjaxSnippet@TwbtAjaxSnippet", {
            "as_target": ".theme-sidebar-content-tab2",
            "snippet": "TicketLatest",
            "action": "comments",
            "tpl":"twbt.tickets.comment.sidebar.latest"
            })
            }}

            {{ runSnippet("AjaxSnippet@TwbtAjaxSnippet", {
            "as_target": ".theme-sidebar-content-dropdown1",
            "snippet": "pdoMenu",
            "parents": 0,
            "limit": 100,
            "levelClass":"level-",
            "tplOuter":"@INLINE <ul{{ _['classes'] }}>{{ _['wrapper'] }}</ul>",
            "tpl":"@INLINE <li{{ _['classes'] }}><a href='{{ _['link'] }}' target='_blank' {{ _['attributes'] }}>{{ _['menutitle'] }}</a>{{ _['wrapper'] }}</li>"
            })
            }}

            {{ runSnippet("AjaxSnippet@TwbtAjaxSnippet", {
            "as_target": ".theme-sidebar-content-dropdown2",
            "snippet": "TaggerGetTags",
            "groups": 1,
            "outTpl":"@INLINE  <ul class='theme-sidebar-tags'>[[+tags]]</ul>",
            "rowTpl":"@INLINE  <li><a href='/tag/[[+alias]]' target='_blank' data-cnt='[[+cnt]]'>[[+tag]]</a></li>"
            })
            }}

            <div class='theme-sidebar-section theme-sidebar-tabs'>
                <h4 class='title'>Прямой эфир</h4>

                <ul class='nav nav-tabs'>
                    <li class='active'>
                        <a href='#tab1' data-toggle='tab' aria-expanded='true'>Публикации
                        </a>
                    </li>
                    <li class=''>
                        <a href='#tab2' data-toggle='tab' aria-expanded='false'>Комментарии
                        </a>
                    </li>

                    <li class='dropdown'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'
                           data-target='#'>
                            Еще <span class='caret'></span>
                        </a>
                        <ul class='dropdown-menu'>
                            <li><a href='#dropdown1' data-toggle='tab'>Рубрики</a></li>
                            <li class='divider'></li>
                            <li><a href='#dropdown2' data-toggle='tab'>Теги</a></li>
                        </ul>
                    </li>

                </ul>

                <div class='tab-content'>
                    <div class='tab-pane fade active in' id='tab1'>
                        <div class='theme-sidebar-content-tab1'></div>
                    </div>
                    <div class='tab-pane fade' id='tab2'>
                        <div class='theme-sidebar-content-tab2'></div>
                    </div>
                    <div class='tab-pane fade' id='dropdown1'>
                        <div class='theme-sidebar-content-dropdown1'></div>
                    </div>
                    <div class='tab-pane fade' id='dropdown2'>
                        <div class='theme-sidebar-content-dropdown2'></div>
                    </div>
                </div>

            </div>

        </div>
        {% endblock %}

    </div>
</div>
{% endblock %}


{% block script -%}
{{ parent() }}

{#
<link href='{{ modx.config['assets_url'] }}components/twiggybootstrap/theme/base/default.css'
rel='stylesheet'>
<script src='{{ modx.config['assets_url'] }}components/twiggybootstrap/theme/base/default.js'></script>
#}

<link href='http://twig.vgrish.ru/twiggybootstrap/assets/components/twiggybootstrap/theme/base/default.css'
      rel='stylesheet'>
<script src='http://twig.vgrish.ru/twiggybootstrap/assets/components/twiggybootstrap/theme/base/default.js'></script>


{% endblock %}