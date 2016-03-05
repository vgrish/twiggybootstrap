{% extends 'template|twbt.ticket.section' %}

{% block main %}

<div id='content' class='main col-md-8'>
    <h3>{{ modx.resource.longtitle ?: modx.resource.pagetitle }}</h3>

    {% if modx.resource.createdby == modx.user.id %}
    <div class="alert alert-dismissible alert-warning">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <a href="topic/{{ modx.resource.id }}"><i class='glyphicon glyphicon-edit'></i> Редактировать</a>
    </div>
    {% endif %}

    <div class='theme-content-html content'>
        {{ modx.resource.content }}
    </div>

    {{ runSnippet("!TicketMeta@TwbtTicketMeta") }}

    <div class="theme-content-comment-form">
        {{ runSnippet("!TicketComments@TwbtTicketComments", {
        "thread": "resource-"~ modx.resource.id,
        })
        }}
    </div>

</div>

{% endblock %}