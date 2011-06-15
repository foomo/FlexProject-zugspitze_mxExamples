import org.foomo.zugspitze.examples.applications.commands.Application;
import org.foomo.zugspitze.examples.applications.commands.controllers.ApplicationController;
import org.foomo.zugspitze.examples.applications.commands.views.ApplicationView;
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