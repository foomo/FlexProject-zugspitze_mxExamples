package org.foomo.zugspitze.examples.applications.commands
{
	import org.foomo.zugspitze.examples.applications.commands.controllers.ApplicationController;
	import org.foomo.zugspitze.examples.applications.commands.models.ApplicationModel;
	import org.foomo.zugspitze.examples.applications.commands.views.ApplicationView;
	import org.foomo.zugspitze.apps.ZugspitzeApplication;

	import flash.events.Event;

	import mx.events.FlexEvent;

	public class Application extends ZugspitzeApplication
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		/**
		 * Constructor
		 */
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
			return Application(_zugspitze.application);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function creationCompleteHandler(event:Event):void
		{
			ApplicationController(this.controller).init();
		}
	}
}