package org.foomo.zugspitze.examples.components.counter
{
	import org.foomo.zugspitze.examples.components.counter.controller.CounterController;
	import org.foomo.zugspitze.examples.components.counter.model.CounterModel;
	import org.foomo.zugspitze.examples.components.counter.view.CounterView;
	import org.foomo.zugspitze.apps.ZugspitzeCanvas;

	public class CounterComponent extends ZugspitzeCanvas
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