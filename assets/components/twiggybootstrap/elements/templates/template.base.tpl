<!DOCTYPE html>
<html lang='en'>
<head>

    {% block head -%}
    <meta charset='{{ modx.config['modx_charset'] }}'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <meta name='description' content=''>
    <meta name='author' content=''>
    <base href='{{ modx.config['site_url'] }}'/>
    <title>{{ runSnippet('!pdoTitle') ~ ' / ' ~ modx.config['site_name'] }}</title>
    {% endblock %}

</head>

<body>

{% block navbar -%}
{% endblock %}

<div class='container'>

    {% block container -%}
    {% endblock %}

    {% block footer %}
    {% endblock %}

</div>

{% block script -%}
{% endblock %}

</body>
</html>