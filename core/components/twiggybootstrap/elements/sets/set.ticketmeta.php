<?php

$sets = array();

$tmp = array(
    'twbt' => array(
        'tpl'         => array(
            'type'  => 'textfield',
            'value' => 'twbt.tickets.meta',
            'desc'  => 'tickets_prop_meta_tpl'
        ),
        'tplFile'     => array(
            'type'  => 'textfield',
            'value' => 'tpl.Tickets.meta.file',
            'desc'  => 'tickets_prop_meta_tplFile'
        ),
        'getSection'  => array(
            'type'  => 'combo-boolean',
            'value' => true,
        ),
        'getUser'     => array(
            'type'  => 'combo-boolean',
            'value' => true,
        ),
        'getFiles'    => array(
            'type'  => 'combo-boolean',
            'value' => false,
        ),
        'unusedFiles' => array(
            'type'  => 'combo-boolean',
            'value' => true,
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