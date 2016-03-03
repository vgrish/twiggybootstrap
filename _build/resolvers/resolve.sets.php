<?php

/** @var $modx modX */
if (!$modx = $object->xpdo AND !$object->xpdo instanceof modX) {
    return true;
}

/** @var $options */
switch ($options[xPDOTransport::PACKAGE_ACTION]) {
    case xPDOTransport::ACTION_INSTALL:
    case xPDOTransport::ACTION_UPGRADE:

        foreach (array('pdopage', 'pdomenu') as $v) {
            /* @var modSnippet $snippet */
            if (!$snippet = $modx->getObject('modSnippet', array('name' => $v))) {
                continue;
            }
            $sets = (array)include $sources['build'] . 'sets/set.' . $v . '.php';
            if (empty($sets)) {
                continue;
            }

            foreach ($sets as $name => $property) {

                $property = array_merge(
                    array('properties'=> $property), array('name' => $name)
                );

                /** modPropertySet $propertySet */
                if (!$propertySet = $modx->getObject('modPropertySet', array('name' => $name))) {
                    $propertySet = $modx->newObject('modPropertySet');
                }
                $propertySet->fromArray($property,'', true, true);
                $propertySet->save();

                if ($snippet->addPropertySet($propertySet)) {
                    $snippet->save();
                }
            }

        }

        break;

    case xPDOTransport::ACTION_UNINSTALL:
        break;
}

return true;
