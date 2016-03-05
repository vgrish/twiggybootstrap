<?php

$sets = array();

$tmp = array(
    'twbt' => array(
        'snippet'     => array(
            'type'  => 'textfield',
            'value' => 'pdoResources',
        ),
        'propertySet' => array(
            'type'  => 'textfield',
            'value' => '',
        ),
        'wrapper'     => array(
            'type'  => 'textfield',
            'value' => 'twbt.ajax.wrapper',
        ),
        'as_mode'     => array(
            'type'    => 'list',
            'options' => array(
                array('text' => 'OnLoad', 'value' => 'onload'),
                array('text' => 'OnClick', 'value' => 'onclick'),
                array('text' => 'None', 'value' => 'none'),
            ),
            'value'   => 'onload'
        ),
        'as_trigger'  => array(
            'type'  => 'textfield',
            'value' => '',
        ),
        'as_target'   => array(
            'type'  => 'textfield',
            'value' => '',
        ),

        'limit'   => array(
            'type'  => 'numberfield',
            'value' => 10,
        ),
        'parents'   => array(
            'type'  => 'numberfield',
            'value' => 0,
        ),
        'sortby'   => array(
            'type'  => 'textfield',
            'value' => 'createdon',
        ),
        'sortdir'   => array(
            'type'  => 'textfield',
            'value' => 'DESC',
        ),
        'includeContent'   => array(
            'type'  => 'numberfield',
            'value' => 0,
        ),
        'cacheKey'   => array(
            'type'  => 'textfield',
            'value' => '',
        ),
        'cacheTime'   => array(
            'type'  => 'numberfield',
            'value' => 1800,
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