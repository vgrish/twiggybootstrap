<div class='theme-content-section tickets-row'>
     <span class='ticket-section'>
			<i class='glyphicon glyphicon-folder-open'></i>&nbsp;&nbsp;
			<a href='{{ makeUrl(_['section.id']) }}'> {{ _['section.pagetitle'] }}</a>
		</span>
    <h3 class='title'>
        <a href='{{ _['uri'] }}'>{{ _['pagetitle'] }}</a>
    </h3>

    <div class='ticket-labels'>
    </div>

    <div class='theme-content-html content'>
        {{ _['introtext'] }}
        <div class='ticket-read-more'>
            <br>
            <a href='{{ _['uri'] }}#cut' class='btn btn-raised btn-default btn-sm'>{{ _('ticket_read_more') }}</a>
        </div>
    </div>

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
			<a href='{{ _['uri'] }}#comments'>
                <i class='glyphicon glyphicon-comment'></i> {{ _['comments'] }} [[+new_comments]]
            </a>
			<span class='pull-right ticket-rating[[+active]][[+inactive]]'>
			<span class='vote plus[[+voted_plus]]' title='{{ _('ticket_like') }}'>
                <i class='glyphicon glyphicon-arrow-up'></i></span>
			[[+can_vote]][[+cant_vote]]
			<span class='vote minus[[+voted_minus]]' title='{{ _('ticket_dislike') }}'>
                <i class='glyphicon glyphicon-arrow-down'></i></span>
			</span>
		</span>

    </div>

</div>

<!--pdotools_can_vote <span class="vote rating" title="[[%ticket_refrain]]"><i class="glyphicon glyphicon-minus"></i></span>-->
<!--pdotools_cant_vote <span class="rating[[+rating_positive]][[+rating_negative]]" title="[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]">[[+rating]]</span>-->
<!--pdotools_new_comments <span class="ticket-new-comments">+[[+new_comments]]</span>-->
<!--pdotools_active  active-->
<!--pdotools_inactive  inactive-->
<!--pdotools_voted_plus  voted-->
<!--pdotools_voted_minus  voted-->
<!--pdotools_rating_positive  positive-->
<!--pdotools_rating_negative  negative-->
<!--pdotools_can_star  active-->
<!--pdotools_stared <i class="glyphicon glyphicon-star stared star"></i>-->
<!--pdotools_unstared <i class="glyphicon glyphicon-star unstared star"></i>-->
