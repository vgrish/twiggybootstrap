{% extends 'template|twbt.main' %}

{% block container %}

{{ runSnippet("pdoCrumbs", {
"showAtHome": 0,
"showHome": 1,
"outputSeparator": "",
"tpl": "@INLINE <li><a href='{{ _['link'] }}'>{{ _['menutitle'] }}</a></li>",
"tplCurrent": "@INLINE <li class='active'>{{ _['menutitle'] }}</li>",
"tplWrapper": "@INLINE <ol class='breadcrumb'>{{ _['output'] }}</ol>",
})
}}
<div id='content' class='main'>
    <h3>{{ modx.resource.longtitle ?: modx.resource.pagetitle }}</h3>
    {{ modx.resource.content }}
</div>

{% endblock %}
