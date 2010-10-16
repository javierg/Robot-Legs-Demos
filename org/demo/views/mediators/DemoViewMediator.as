package org.demo.views.mediators {
	
	import org.demo.services.DemoService;
	import org.demo.events.DemoEvent;
	import org.demo.views.DemoView;
	
	import org.robotlegs.mvcs.Mediator;

	public class DemoViewMediator extends Mediator {
		
		[Inject]
		public var demo_view:DemoView;

		public function DemoViewMediator();

		override public function onRegister():void {
			addContextListener( DemoEvent.DATA_LOADED, onDataLoaded );
			eventDispatcher.dispatchEvent( new DemoEvent(DemoEvent.INIT) );
		}
		
		public function onDataLoaded(e:DemoEvent):void {
			demo_view.setData( e.demo );
		}

	}

}
