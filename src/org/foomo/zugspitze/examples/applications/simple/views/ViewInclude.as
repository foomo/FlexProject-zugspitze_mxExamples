import org.foomo.zugspitze.examples.applications.simple.Application;
import org.foomo.zugspitze.examples.applications.simple.controllers.ApplicationController;
import org.foomo.zugspitze.examples.applications.simple.views.ApplicationView;
import org.foomo.zugspitze.examples.applications.simple.models.ApplicationModel;
import org.foomo.zugspitze.core.ZugspitzeView;

import flash.display.DisplayObject;

/**
 * @private
 */
[Bindable]
public var application:Application = Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:ApplicationView;

/**
 * @private
 */
[Bindable]
public var model:ApplicationModel;

/**
 * @private
 */
[Bindable]
public var controller:ApplicationController;

