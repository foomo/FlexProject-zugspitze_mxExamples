package org.foomo.zugspitze.examples.applications.blank
{
	import org.foomo.zugspitze.examples.applications.blank.controllers.ApplicationController;
	import org.foomo.zugspitze.examples.applications.blank.models.ApplicationModel;
	import org.foomo.zugspitze.examples.applications.blank.views.ApplicationView;
	import org.foomo.zugspitze.apps.FlexApplication;
	import org.foomo.zugspitze.events.ZugspitzeEvent;

	import flash.events.Event;

	import mx.events.FlexEvent;

	public class Application extends FlexApplication
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function Application()
		{
			super();
			this.viewClass = ApplicationView;
			this.modelClass = ApplicationModel;
			this.controllerClass = ApplicationController;
			this.addEventListener(FlexEvent.CREATION_COMPLETE, this.creationCompleteHandler);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public static application singleton
		//-----------------------------------------------------------------------------------------

		public static function get application():Application
		{
			return Application(_zugspitze.application)
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function creationCompleteHandler(event:Event):void
		{
			ApplicationController(this.controller).initialize();
		}
	}
}