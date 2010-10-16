package org.demo.services {
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.xml.XMLDocument;

	import org.demo.model.vo.Demo;
	import org.demo.events.DemoEvent;

	import org.robotlegs.mvcs.Actor;
	
	public class DemoService extends Actor implements IDemoService {
		
		private const FEED:String = "http://twitter.com/statuses/user_timeline/37553056.rss";

		private var loader:URLLoader;
		private var request:URLRequest;
		private var p:*;

		public function loadFeed():void {
			loader = new URLLoader();
			request = new URLRequest( FEED );
			loader.load( request );
			setListeners( loader );
		}
		
		public function onLoadedData(e:Event):void {
			var demo:Demo  = new Demo();
			var feed:XML    = new XML(e.target.data);
			
			demo.title = "THIS IS A TITTLE";
			demo.link = feed.channel.link;
			demo.description = feed.channel.description;
			demo.items = new Array();
			for (p in feed.channel.item) {
				demo.items.push( feed.channel.item[p] );
			}
			dispatch( new DemoEvent(DemoEvent.DATA_LOADED, demo) ) ;
		}

		private function setListeners( e:IEventDispatcher ):void {
			e.addEventListener(Event.COMPLETE, onLoadedData, false, 1, true );
		}

	}

}	
