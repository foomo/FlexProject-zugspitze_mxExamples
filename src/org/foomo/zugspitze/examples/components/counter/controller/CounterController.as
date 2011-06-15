package org.foomo.zugspitze.examples.components.counter.controller
{
	import org.foomo.zugspitze.examples.commands.AddCommand;
	import org.foomo.zugspitze.examples.components.counter.model.CounterModel;
	import org.foomo.zugspitze.examples.components.counter.view.CounterView;
	import org.foomo.zugspitze.core.ZugspitzeController;

	public class CounterController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function CounterController()
		{
			super();
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		public function add():void
		{
			this.executeCommand(new AddCommand(2, this.model));
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private methods
		//-----------------------------------------------------------------------------------------

		private function get model():CounterModel
		{
			return CounterModel(this.zugspitze.model);
		}

		private function get view():CounterView
		{
			return CounterView(this.zugspitze.view);
		}
	}
}