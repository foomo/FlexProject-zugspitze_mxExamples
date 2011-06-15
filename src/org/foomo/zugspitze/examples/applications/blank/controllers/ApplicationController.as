package org.foomo.zugspitze.examples.applications.blank.controllers
{
	import org.foomo.zugspitze.examples.applications.blank.models.ApplicationModel;
	import org.foomo.zugspitze.examples.applications.blank.views.ApplicationView;
	import org.foomo.zugspitze.core.ZugspitzeController;

	public class ApplicationController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Initialize application
		//-----------------------------------------------------------------------------------------

		public function initialize():void
		{
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