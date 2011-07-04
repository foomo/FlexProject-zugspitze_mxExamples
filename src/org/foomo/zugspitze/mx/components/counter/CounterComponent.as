/*
 * This file is part of the foomo Opensource Framework.
 *
 * The foomo Opensource Framework is free software: you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public License as
 * published  by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * The foomo Opensource Framework is distributed in the hope that it will
 * be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along with
 * the foomo Opensource Framework. If not, see <http://www.gnu.org/licenses/>.
 */
package org.foomo.zugspitze.mx.components.counter
{
	import org.foomo.zugspitze.mx.components.counter.controller.CounterController;
	import org.foomo.zugspitze.mx.components.counter.model.CounterModel;
	import org.foomo.zugspitze.mx.components.counter.view.CounterView;
	import org.foomo.zugspitze.apps.ZugspitzeCanvas;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
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