package org.foomo.zugspitze.examples.applications.commands.controllers
{
	import org.foomo.zugspitze.examples.commands.AddCommand;
	import org.foomo.zugspitze.examples.commands.DispatchFaultCommand;
	import org.foomo.zugspitze.examples.commands.NoRedoCommand;
	import org.foomo.zugspitze.examples.commands.NoUndoCommand;
	import org.foomo.zugspitze.examples.commands.ShowBusyCursorCommand;
	import org.foomo.zugspitze.examples.applications.commands.models.ApplicationModel;
	import org.foomo.zugspitze.examples.applications.commands.views.ApplicationView;
	import org.foomo.zugspitze.core.ZugspitzeController;
	import org.foomo.zugspitze.events.CommandEvent;
	import org.foomo.zugspitze.managers.CommandManager;

	import flash.events.KeyboardEvent;

	import mx.core.Application;

	public class ApplicationController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function ApplicationController():void
		{
			super();
			CommandManager.addEventListener(CommandEvent.COMMAND_ERROR, this.commandErrorHandler);
			Application.application.addEventListener(KeyboardEvent.KEY_DOWN, this.keyDownHandler)
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private methods
		//-----------------------------------------------------------------------------------------

		private function get model():ApplicationModel
		{
			return ApplicationModel(this.zugspitze.model);
		}

		private function get view():ApplicationView
		{
			return ApplicationView(this.zugspitze.view);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		public function init():void
		{
			this.view.currentState = ApplicationView.STATE_EXAMPLE;
		}

		/**
		 * Global Command Fault Handler
		 * This should be the place where you handle command faults
		 */
		private function commandErrorHandler(event:CommandEvent):void
		{
			trace('Controller :: Global command fault handler')
		}

		private function keyDownHandler(event:KeyboardEvent):void
		{
			if (event.ctrlKey && event.keyCode == 90) {
				this.undo();
			} else if (event.ctrlKey && event.keyCode == 89) {
				this.redo();
			}
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		public function add():void
		{
			this.executeCommand(new AddCommand(1, this.model));
		}

		public function noUndo():void
		{
			this.executeCommand(new NoUndoCommand());
		}

		public function noRedo():void
		{
			this.executeCommand(new NoRedoCommand());
		}

		public function showBusyCursor():void
		{
			this.executeCommand(new ShowBusyCursorCommand());
			this.executeCommand(new ShowBusyCursorCommand());
			this.executeCommand(new ShowBusyCursorCommand());
		}

		public function dispatchFault():void
		{
			this.executeCommand(new DispatchFaultCommand());
		}
	}
}