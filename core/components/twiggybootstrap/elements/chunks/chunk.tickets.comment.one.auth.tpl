<li class='ticket-comment[[+comment_new]]' id='comment-{{ _['id'] }}' data-parent='{{ _['parent'] }}' data-newparent='{{ _['new_parent'] }}' data-id='{{ _['id'] }}'>
    <div class='ticket-comment-body[[+guest]][[+bad]]'>
        <div class='ticket-comment-header'>
            <div class='ticket-comment-dot-wrapper'><div class='ticket-comment-dot'></div></div>
            <img src='{{ _['avatar'] }}' class='ticket-avatar' alt='' />
            <span class='ticket-comment-author'>{{ _['fullname'] }}</span>
            <span class='ticket-comment-createdon'>{{ _['date_ago'] }}</span>[[+comment_was_edited]]
            <span class='ticket-comment-link'><a href='{{ _['url'] }}#comment-{{ _['id'] }}'>#</a></span>
            <span class='ticket-comment-star[[+can_star]]'>[[+stared]][[+unstared]]</span>
            [[+has_parent]]
            <span class='ticket-comment-down'><a href='#' data-child=''>&darr;</a></span>
			<span class='ticket-comment-rating[[+can_vote]][[+cant_vote]]'>
				<span class='rating[[+rating_positive]][[+rating_negative]]' title='{{ _('ticket_rating_total') }} [[+rating_total]]: ↑[[+rating_plus]] {{ _('ticket_rating_and') }} ↓[[+rating_minus]]'>{{ _['rating'] }}</span>
				<span class='vote plus[[+voted_plus]]' title='{{ _('ticket_like') }}'><i class='glyphicon glyphicon-arrow-up'></i></span>
				<span class='vote minus[[+voted_minus]]' title='{{ _('ticket_dislike') }}'><i class='glyphicon glyphicon-arrow-down'></i></span>
			</span>
        </div>
        <div class='ticket-comment-text'>
            {{ _['text'] }}
        </div>
    </div>
    <div class='comment-reply'>
        <a href='#' class='reply'>[[%ticket_comment_reply]]</a>
        [[+comment_edit_link]]
    </div>
    <ol class='comments-list'>{{ _['children'] }}</ol>
</li>

<!--pdotools_comment_edit_link <a href="#" class="edit">[[%ticket_comment_edit]]</a>-->
<!--pdotools_comment_was_edited <span class="ticket-comment-edited">([[%ticket_comment_was_edited]])</span>-->
<!--pdotools_comment_new  ticket-comment-new-->
<!--pdotools_can_vote  active-->
<!--pdotools_cant_vote  inactive-->
<!--pdotools_rating_positive  positive-->
<!--pdotools_rating_negative  negative-->
<!--pdotools_voted_plus  voted-->
<!--pdotools_voted_minus  voted-->
<!--pdotools_guest  ticket-comment-guest-->
<!--pdotools_has_parent <span class="ticket-comment-up"><a href="[[+url]]#comment-[[+parent]]" data-id="[[+id]]" data-parent="[[+parent]]">&uarr;</a></span>-->
<!--pdotools_can_star  active-->
<!--pdotools_stared <i class="glyphicon glyphicon-star stared star"></i>-->
<!--pdotools_unstared <i class="glyphicon glyphicon-star unstared star"></i>-->

