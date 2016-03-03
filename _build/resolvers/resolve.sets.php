<?php

/** @var $modx modX */
if (!$modx = $object->xpdo AND !$object->xpdo instanceof modX) {
    return true;
}

/** @var $options */
switch ($options[xPDOTransport::PACKAGE_ACTION]) {
    case xPDOTransport::ACTION_INSTALL:
    case xPDOTransport::ACTION_UPGRADE:

        foreach (array('pdoPage', 'pdoMenu') as $sname) {
            /* @var modSnippet $snippet */
            if (!$snippet = $modx->getObject('modSnippet', array('name' => $sname))) {
                continue;
            }

            $sets = (array)include MODX_ASSETS_PATH . 'components/twiggybootstrap/elements/sets/set.' . strtolower($sname) . '.php';
            if (empty($sets)) {
                continue;
            }

            foreach ($sets as $name => $property) {
                $name = $name . ucfirst($sname);

                /** modPropertySet $propertySet */
                if (!$propertySet = $modx->getObject('modPropertySet', array('name' => $name))) {
                    $propertySet = $modx->newObject('modPropertySet');
                }

                $propertySet->set('properties', $property);
                $propertySet->set('name', $name);
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
