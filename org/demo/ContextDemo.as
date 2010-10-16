package org.demo {
	import flash.display.DisplayObjectContainer;

	import org.demo.model.DemoModel;
	import org.demo.events.DemoEvent;
	import org.demo.controllers.DemoCommand;
	import org.demo.controllers.StartupCommand;
	import org.demo.services.IDemoService;
	import org.demo.services.DemoService;
	import org.demo.views.DemoView;
	import org.demo.views.mediators.DemoViewMediator;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	public class ContextDemo extends Context {
		
		public function ContextDemo(context_view:DisplayObjectContainer, autostart:Boolean = true) {
			super( context_view, autostart );
		}
	
		override public function startup():void {
			
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent );

			commandMap.mapEvent(DemoEvent.INIT, DemoCommand, DemoEvent );

			injector.mapSingleton( DemoModel );

			injector.mapSingletonOf( IDemoService, DemoService );

			mediatorMap.mapView( DemoView, DemoViewMediator );

			super.startup();

		}
	
	}
}
