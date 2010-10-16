package org.demo.controllers {
	
	import org.demo.views.DemoView;
	import org.robotlegs.mvcs.Command;

	public class StartupCommand extends Command {
		
		override public function execute():void {
			contextView.addChild( new DemoView() );
		}

	}

}
