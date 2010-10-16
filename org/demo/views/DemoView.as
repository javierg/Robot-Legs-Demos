package org.demo.views {
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	public class DemoView extends Sprite {

		public function DemoView();

		public function setData( data:* ):void{
			var title:TextField = titles( data.title, 10 );
			var desc:TextField  = titles( data.description, 20 );
			for (var p:* in data.items){
				var y:Number = (p*20) + 40;
				var twit:TextField = doTextField ( data.items[p].description, x, y );
				twit.width = stage.stageWidth;
			}
		}

		private function titles(txt:String, y:Number):TextField {
			var t:TextField = doTextField(txt, 0, y);
			t.width = stage.stageWidth;
			return t;
		}

		private function doTextField(txt:String, x:Number=0, y:Number=0):TextField {
			var t:TextField = new TextField();
			t.text = txt;
			t.autoSize = TextFieldAutoSize.CENTER;
			t.x = x;
			t.y = y;
			addChild(t);
			return t;
		}

	}

}

