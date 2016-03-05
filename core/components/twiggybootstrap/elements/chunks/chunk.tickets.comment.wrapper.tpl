<div class='comments'>

    {% if isAuthenticated() %}
    <span class='comments-subscribe pull-right checkbox'>
		<label for='comments-subscribe'>
            <input type='checkbox' name='' id='comments-subscribe' value='1' [[+subscribed]] /> {{ _('ticket_comment_notify') }}
        </label>
	</span>
    {% endif %}

    <h4 class='title'>{{ _('comments') }} (<span id='comment-total'>{{ _['total'] }}</span>)</h4>
    <div id='comments-wrapper'>
        <ol class='comment-list' id='comments'>{{ _['comments'] }}</ol>
    </div>

    <div id='comments-tpanel'>
        <div id='tpanel-refresh'></div>
        <div id='tpanel-new'></div>
    </div>
</div>

<!--pdotools_subscribed checked-->