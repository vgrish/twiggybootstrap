{% extends 'template|twbt.main' %}

{% block content %}
<div class='container'>
    {{ runSnippet("pdoCrumbs@TwbtPdoCrumbs", {
    "showAtHome": 0,
    "showHome": 1
    })
    }}
    <div id='content' class='main'>
        <h3>{{ modx.resource.longtitle ?: modx.resource.pagetitle }}</h3>
        {{ modx.resource.content }}
    </div>
</div>
{% endblock %}
