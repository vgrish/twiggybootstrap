<div class='tickets-latest-row'>
    <span class='user'>
		<i class='glyphicon glyphicon-user'></i>&nbsp;
		<a href='users/{{ _['createdby'] }}/'>{{ _['fullname'] }}</a>
	</span>
    <span class='date'>{{ _['date_ago'] }}</span>
    <br>
    <span class='ticket'>
        <a href='{{ makeUrl(_['ticket.id']) }}#comment-{{ _['id'] }}'>{{ _['ticket.pagetitle'] }}</a>
	</span>
    <nobr>
        <span class='comments'>&nbsp;
			<i class='glyphicon glyphicon-comment'></i>&nbsp;{{ _['comments'] }}</span>
    </nobr>
</div>

