<div class='ticket-meta row' data-id='{{ _['id'] }}'>
        <span class='col-md-7'>
			<i class='glyphicon glyphicon-calendar'></i> {{ _['date_ago'] }}&nbsp;&nbsp;
			<i class='glyphicon glyphicon-user'></i> {{ _['fullname'] }}
		</span>
		<span class='col-md-5'>
			<span class='ticket-star[[+can_star]]'>[[+stared]][[+unstared]]
                <span class='ticket-star-count'>{{ _['stars'] }}</span>
            </span>&nbsp;&nbsp;
			<i class='glyphicon glyphicon-eye-open'></i> {{ _['views'] }}&nbsp;&nbsp;
			<span class='pull-right ticket-rating[[+active]][[+inactive]]'>
			<span class='vote plus[[+voted_plus]]' title='{{ _('ticket_like') }}'>
                <i class='glyphicon glyphicon-arrow-up'></i></span>
			[[+can_vote]][[+cant_vote]]
			<span class='vote minus[[+voted_minus]]' title='{{ _('ticket_dislike') }}'>
                <i class='glyphicon glyphicon-arrow-down'></i></span>
			</span>
		</span>

</div>

<!--pdotools_can_vote <span class="vote rating" title="[[%ticket_refrain]]"><i class="glyphicon glyphicon-minus"></i></span>-->
<!--pdotools_cant_vote <span class="rating[[+rating_positive]][[+rating_negative]]" title="[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]">[[+rating]]</span>-->
<!--pdotools_active  active-->
<!--pdotools_inactive  inactive-->
<!--pdotools_voted_plus  voted-->
<!--pdotools_voted_minus  voted-->
<!--pdotools_rating_positive  positive-->
<!--pdotools_rating_negative  negative-->
<!--pdotools_has_files
<ul class="ticket-files">
	<strong>[[%ticket_uploaded_files]]:</strong>
	[[+files]]
</ul>-->
<!--pdotools_can_star  active-->
<!--pdotools_stared <i class="glyphicon glyphicon-star stared star"></i>-->
<!--pdotools_unstared <i class="glyphicon glyphicon-star unstared star"></i>-->
