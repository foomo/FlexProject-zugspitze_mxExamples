import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.examples.applications.commands.Application;
import org.foomo.zugspitze.examples.applications.commands.controllers.ApplicationController;
import org.foomo.zugspitze.examples.applications.commands.models.ApplicationModel;
import org.foomo.zugspitze.examples.applications.commands.views.ApplicationView;

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