<?php

$templates = array();
$tmp = array(
    'twbt.base'  => array('file' => 'base'),
    'twbt.main'  => array('file' => 'main'),
    'twbt.inner' => array('file' => 'inner'),

    'twbt.ticket.section' => array('file' => 'ticket.section'),
    'twbt.ticket.ticket'  => array('file' => 'ticket.ticket'),
);

foreach ($tmp as $k => $v) {
    /* @avr modTemplate $template */
    $template = $modx->newObject('modTemplate');
    $template->fromArray(array(
        'id'           => 0,
        'templatename' => $k,
        'description'  => @$v['description'],
        'content'      => file_get_contents($sources['source_core'] . '/elements/templates/template.' . $v['file'] . '.tpl'),
        'static'       => BUILD_TEMPLATE_STATIC,
        'source'       => 1,
        'static_file'  => 'assets/components/' . PKG_NAME_LOWER . '/elements/templates/template.' . $v['file'] . '.tpl',
    ), '', true, true);
    $templates[] = $template;
}
unset($tmp);
return $templates;