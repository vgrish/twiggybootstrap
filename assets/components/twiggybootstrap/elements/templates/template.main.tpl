{% extends 'template|twbt.base' %}

{% block head %}
{{ parent() }}

<!-- Material Design fonts -->
<link rel='stylesheet'
      href='https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&lang=en'>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>

<!-- Bootstrap -->
<link href='{{ modx.config['assets_url'] }}components/twiggybootstrap/vendor/bootstrap/dist/css/bootstrap.min.css'
      rel='stylesheet'>

<!-- Bootstrap Material Design -->
<link href='{{ modx.config['assets_url'] }}components/twiggybootstrap/vendor/bootstrapmd/dist/css/bootstrap-material-design.min.css'
      rel='stylesheet'>
<link href='{{ modx.config['assets_url'] }}components/twiggybootstrap/vendor/bootstrapmd/dist/css/ripples.min.css'
      rel='stylesheet'>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src='https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js'></script>
<script src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js'></script>

<![endif]-->
{% endblock %}

{% block navbar -%}

<div class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class='navbar-brand' href='/'>{{ modx.config['site_name'] }}</a>
        </div>
        <div class="navbar-collapse navbar-responsive-collapse collapse" aria-expanded="false" style="height: 1px;">
            {{ runSnippet("pdoMenu@TwbtPdoMenu", {
            "startId": 0,
            "level": 2,
            "tplParentRow": "@INLINE
             <li class='{{ _['classnames'] }} dropdown'>
                <a href='#' data-target='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='false'
                        {{ _['attributes'] }}>{{ _['menutitle'] }}
                    <b class='caret'></b><div class='ripple-container'></div>
                </a>
                <ul class='dropdown-menu'>
                    {{ _['wrapper'] }}
                </ul>
            </li>"
            })
            }}

            <form class="navbar-form navbar-right">
                <div class="form-group is-empty">
                    <input type="text" class="form-control col-md-8" placeholder="Search">
                    <span class="material-input"></span></div>
            </form>

        </div>
    </div>
</div>

{% endblock %}

{% block container %}
<div id='content' class='main'>
    <h3>{{ modx.config['site_name'] }}</h3>
    {{ modx.resource.content }}

    {{ runSnippet("!pdoPage@TwbtPdoPage", {
    "element": "pdoResources",
    "parents": 0,
    "limit": 5,
    "tpl": "@INLINE <p>{{ _['idx'] }}. <a href='{{ _['link'] }}'>{{ _['pagetitle'] }}</a></p>"
    })
    }}

    {{ getPlaceholder('page.nav') }}
</div>
{% endblock %}

{% block footer %}
<hr>
<footer>
    <div class='row'>
        <div class='col-lg-10'>
            <p>
                <small>
                    <code>{{ getInfo() }}</code>
                </small>
            </p>
        </div>
        <div class='col-lg-2'>
            <p class=''>&copy;2016 {{ modx.config['site_name'] }}</p>
        </div>
    </div>
</footer>
{% endblock %}

{% block script -%}
{{ parent() }}

<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js'></script>

<script src='{{ modx.config['assets_url'] }}components/twiggybootstrap/vendor/bootstrap/dist/js/bootstrap.min.js'></script>
<script src='{{ modx.config['assets_url'] }}components/twiggybootstrap/vendor/bootstrapmd/dist/js/material.min.js'></script>
<script src='{{ modx.config['assets_url'] }}components/twiggybootstrap/vendor/bootstrapmd/dist/js/ripples.min.js'></script>


{#
<script>window.jQuery || document.write('<script src='{{ modx.config['assets_url'] }}components/twiggybootstrap/vendor/jquery/dist/jquery.min.js'><\/script>')</script>
#}

<script>
$(function () {
    $.material.init();
});
</script>


{% endblock %}