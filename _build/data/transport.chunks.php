<?php

$chunks = array();

$tmp = array(
    'twbt.tickets.list'                   => array('file' => 'tickets.list'),
    'twbt.tickets.meta'                   => array('file' => 'tickets.meta'),
    'twbt.tickets.comment.form'           => array('file' => 'tickets.comment.form'),
    'twbt.tickets.comment.wrapper'        => array('file' => 'tickets.comment.wrapper'),
    'twbt.tickets.comment.one.auth'       => array('file' => 'tickets.comment.one.auth'),
    'twbt.tickets.ticket.sidebar.latest'  => array('file' => 'tickets.ticket.sidebar.latest'),
    'twbt.tickets.comment.sidebar.latest' => array('file' => 'tickets.comment.sidebar.latest'),

    'twbt.ajax.wrapper' => array('file' => 'ajax.wrapper'),
);

// Save chunks for setup options
$BUILD_CHUNKS = array();

foreach ($tmp as $k => $v) {
    /* @avr modChunk $chunk */
    $chunk = $modx->newObject('modChunk');
    $chunk->fromArray(array(
        'id'          => 0,
        'name'        => $k,
        'description' => @$v['description'],
        'snippet'     => file_get_contents($sources['source_core'] . '/elements/chunks/chunk.' . $v['file'] . '.tpl'),
        'static'      => BUILD_CHUNK_STATIC,
        'source'      => 1,
        'static_file' => 'core/components/' . PKG_NAME_LOWER . '/elements/chunks/chunk.' . $v['file'] . '.tpl',
    ), '', true, true);

    $chunks[] = $chunk;

    $BUILD_CHUNKS[$k] = file_get_contents($sources['source_core'] . '/elements/chunks/chunk.' . $v['file'] . '.tpl');
}

unset($tmp);
return $chunks;