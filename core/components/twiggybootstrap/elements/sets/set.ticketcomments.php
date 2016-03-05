<?php

$sets = array();

$tmp = array(
    'twbt' => array(
        'tplComments'                 => array(
            'type'  => 'textfield',
            'value' => 'twbt.tickets.comment.wrapper',
        ),
        'tplCommentForm'              => array(
            'type'  => 'textfield',
            'value' => 'twbt.tickets.comment.form',
        ),
        'tplCommentAuth'              => array(
            'type'  => 'textfield',
            'value' => 'twbt.tickets.comment.one.auth',
        ),


        'tplCommentFormGuest'         => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.form.guest',
        ),

        'tplCommentGuest'             => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.one.guest',
        ),
        'tplCommentDeleted'           => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.one.deleted',
        ),
        'tplLoginToComment'           => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.login',
        ),
        'tplCommentEmailOwner'        => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.email.owner',
        ),
        'tplCommentEmailReply'        => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.email.reply',
        ),
        'tplCommentEmailSubscription' => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.email.subscription',
        ),
        'tplCommentEmailBcc'          => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.email.bcc',
        ),
        'tplCommentEmailUnpublished'  => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.comment.email.unpublished',
        ),



        'thread'                      => array(
            'name'  => 'thread',
            'type'  => 'textfield',
            'value' => '',
        ),
        'fastMode'                    => array(
            'type'  => 'combo-boolean',
            'value' => true,
        ),
        'gravatarIcon'                => array(
            'type'  => 'textfield',
            'value' => 'mm',
        ),
        'gravatarSize'                => array(
            'type'  => 'numberfield',
            'value' => '24',
        ),
        'gravatarUrl'                 => array(
            'type'  => 'textfield',
            'value' => 'https://www.gravatar.com/avatar/',
        ),

        'autoPublish'                 => array(
            'type'  => 'combo-boolean',
            'value' => true,
        ),
        'autoPublishGuest'            => array(
            'type'  => 'combo-boolean',
            'value' => true,
        ),
        'formBefore'                  => array(
            'type'  => 'combo-boolean',
            'value' => false,
        ),
        'depth'                       => array(
            'type'  => 'numberfield',
            'desc'  => 'tickets_prop_commentsDepth',
            'value' => 0,
        ),
        'allowGuest'                  => array(
            'type'  => 'combo-boolean',
            'value' => false,
        ),
        'allowGuestEdit'              => array(
            'type'  => 'combo-boolean',
            'value' => true,
        ),
        'allowGuestEmails'            => array(
            'type'  => 'combo-boolean',
            'value' => false,
        ),
        'enableCaptcha'               => array(
            'type'  => 'combo-boolean',
            'value' => true,
        ),
        'minCaptcha'                  => array(
            'type'  => 'numberfield',
            'value' => 1,
        ),
        'maxCaptcha'                  => array(
            'type'  => 'numberfield',
            'value' => 10,
        ),
        'requiredFields'              => array(
            'type'  => 'textfield',
            'value' => 'name,email',
        ),
        'threadUrl'                   => array(
            'type'  => 'textfield',
            'value' => '',
        ),
    )
);

foreach ($tmp as $n => $t) {
    foreach ($t as $k => $v) {
        $sets[$n][$k] = array_merge(array(
            'name'    => $k,
            'desc'    => 'pdotools_prop_' . $k,
            'lexicon' => 'pdotools:properties',
        ), $v
        );
    }
}

return $sets;