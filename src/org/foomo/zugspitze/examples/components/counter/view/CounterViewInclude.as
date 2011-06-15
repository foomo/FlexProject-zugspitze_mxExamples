// ActionScript file
import org.foomo.zugspitze.examples.components.counter.CounterComponent;
import org.foomo.zugspitze.examples.components.counter.controller.CounterController;
import org.foomo.zugspitze.examples.components.counter.model.CounterModel;
import org.foomo.zugspitze.examples.components.counter.view.CounterView;
import org.foomo.zugspitze.core.View;

public function get application():CounterComponent
{
	return View.getApplication(this).application as CounterComponent;
}

[Bindable(event="zugspitzeViewChanged")]
public function get view():CounterView
{
	return View.getApplication(this).model as CounterView;
}

[Bindable(event="zugspitzeModelChanged")]
public function get model():CounterModel
{
	return View.getApplication(this).model as CounterModel;
}

[Bindable(event="zugspitzeControllerChanged")]
public function get controller():CounterController
{
	return View.getApplication(this).controller as CounterController;
}