package org.demo.model {
	import org.robotlegs.mvcs.Actor;
	import org.demo.model.vo.Demo;

	public class DemoModel extends Actor {
		protected var _twits:Demo;

		public function DemoModel();

		public function set twits(t:Demo):void {
			this._twits = t;
		}

		public function get twits():Demo {
			return this._twits;
		}

	}

}
