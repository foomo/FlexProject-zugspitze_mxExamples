package org.foomo.zugspitze.examples.applications.simple.controllers
{
	import org.foomo.zugspitze.examples.applications.simple.models.ApplicationModel;
	import org.foomo.zugspitze.examples.applications.simple.views.ApplicationView;
	import org.foomo.zugspitze.core.ZugspitzeController;

	public class ApplicationController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Initialize application
		//-----------------------------------------------------------------------------------------

		public function initialize():void
		{
			this.model.welcomeText = 'Please enter a text and submit.';
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public mehtods
		//-----------------------------------------------------------------------------------------

		public function setText(value:String):void
		{
			this.model.welcomeText = value;
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private helper methods
		//-----------------------------------------------------------------------------------------

		private function get model():ApplicationModel
		{
			return this.zugspitze.model as ApplicationModel
		}

		private function get view():ApplicationView
		{
			return this.zugspitze.view as ApplicationView
		}
	}
}