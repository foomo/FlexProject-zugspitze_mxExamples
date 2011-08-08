import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.mx.components.blank.Component;
import org.foomo.zugspitze.mx.components.blank.controllers.ComponentController;
import org.foomo.zugspitze.mx.components.blank.models.ComponentModel;
import org.foomo.zugspitze.mx.components.blank.views.ComponentView;

/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.mx.components.blank.Component = org.foomo.zugspitze.mx.components.blank.Component(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.mx.components.blank.views.ComponentView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.mx.components.blank.models.ComponentModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.mx.components.blank.controllers.ComponentController;

