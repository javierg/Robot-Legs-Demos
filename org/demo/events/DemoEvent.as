package org.demo.events {
	import flash.events.Event;

	import org.demo.model.vo.Demo;

	public class DemoEvent extends Event {
		public static const DATA_LOADED:String = "dataLoaded";
		public static const INIT:String = "init";
		public var demo:Demo;

		public function DemoEvent(type:String, demo:Demo = null) {
			this.demo = demo;
			super(type, true, true);
		}

		override public function clone():Event {
			return new DemoEvent( this.type, this.demo );
		}
		 
	}
}
