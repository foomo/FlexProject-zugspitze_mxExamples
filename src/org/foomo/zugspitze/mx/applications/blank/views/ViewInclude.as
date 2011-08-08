import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.mx.applications.blank.Application;
import org.foomo.zugspitze.mx.applications.blank.controllers.ApplicationController;
import org.foomo.zugspitze.mx.applications.blank.models.ApplicationModel;
import org.foomo.zugspitze.mx.applications.blank.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.mx.applications.blank.Application = org.foomo.zugspitze.mx.applications.blank.Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.mx.applications.blank.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.mx.applications.blank.models.ApplicationModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.mx.applications.blank.controllers.ApplicationController;

