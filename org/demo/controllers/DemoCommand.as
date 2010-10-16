package org.demo.controllers {
	
	import org.demo.events.DemoEvent;
	import org.demo.services.IDemoService;
	
	import org.robotlegs.mvcs.Command;

	public class DemoCommand extends Command {
		
		[Inject]
		public var event:DemoEvent;

		[Inject]
		public var service:IDemoService;

		override public function execute():void {
			this.service.loadFeed();
		}

	}
}
