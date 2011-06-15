package org.foomo.zugspitze.examples.components.counter
{
	import org.foomo.zugspitze.examples.components.counter.controller.CounterController;
	import org.foomo.zugspitze.examples.components.counter.model.CounterModel;
	import org.foomo.zugspitze.examples.components.counter.view.CounterView;
	import org.foomo.zugspitze.apps.CanvasApplication;

	public class CounterComponent extends CanvasApplication
	{
		public function CounterComponent()
		{
			super();
			this.controllerClass = CounterController;
			this.modelClass = CounterModel;
			this.viewClass = CounterView;
		}
	}
}