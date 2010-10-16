package {
	import flash.display.Sprite;
	import org.demo.ContextDemo;

	[Size(width=640, height=480)]

	public class Main extends Sprite {
		private var context:ContextDemo;

		public function Main() {
			context = new ContextDemo( this );
		}

	}

}
