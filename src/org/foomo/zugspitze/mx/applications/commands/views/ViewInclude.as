import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.mx.applications.commands.Application;
import org.foomo.zugspitze.mx.applications.commands.controllers.ApplicationController;
import org.foomo.zugspitze.mx.applications.commands.models.ApplicationModel;
import org.foomo.zugspitze.mx.applications.commands.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.mx.applications.commands.Application = org.foomo.zugspitze.mx.applications.commands.Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.mx.applications.commands.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.mx.applications.commands.models.ApplicationModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.mx.applications.commands.controllers.ApplicationController;