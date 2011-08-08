import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.mx.applications.simple.Application;
import org.foomo.zugspitze.mx.applications.simple.controllers.ApplicationController;
import org.foomo.zugspitze.mx.applications.simple.models.ApplicationModel;
import org.foomo.zugspitze.mx.applications.simple.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.mx.applications.simple.Application = org.foomo.zugspitze.mx.applications.simple.Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.mx.applications.simple.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.mx.applications.simple.models.ApplicationModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.mx.applications.simple.controllers.ApplicationController;

