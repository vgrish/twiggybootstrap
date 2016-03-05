<div class='tickets-latest-row'>
    <span class='user'>
		<i class='glyphicon glyphicon-user'></i>&nbsp;
		<a href='users/{{ _['createdby'] }}/'>{{ _['fullname'] }}</a>
	</span>
    <span class='date'>{{ _['date_ago'] }}</span>
    <br>
     <span class='section'>
		<i class='glyphicon glyphicon-folder-open'></i>&nbsp;
		<a href='{{ makeUrl(_['section.id']) }}'>{{ _['section.pagetitle'] }}</a>
		<span class='arrow'>→</span>
    </span>
    <span class='ticket'>
		<a href='{{ _['uri'] }}'>{{ _['pagetitle'] }}</a>
	</span>
    <nobr>
        <span class='comments'>&nbsp;
			<i class='glyphicon glyphicon-comment'></i>&nbsp;{{ _['comments'] }}</span>
    </nobr>
</div>