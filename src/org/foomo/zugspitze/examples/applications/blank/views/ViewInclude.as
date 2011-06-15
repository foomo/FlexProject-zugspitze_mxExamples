import org.foomo.zugspitze.examples.applications.blank.Application;
import org.foomo.zugspitze.examples.applications.blank.controllers.ApplicationController;
import org.foomo.zugspitze.examples.applications.blank.views.ApplicationView;
import org.foomo.zugspitze.examples.applications.blank.models.ApplicationModel;
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

