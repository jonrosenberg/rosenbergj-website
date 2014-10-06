package jonbasics{
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.display.*;
	import flash.text.*;
	import flash.filters.*;




/*	public class loadSwf {
		// rectangle to put movie on
		var rect:Shape = new Shape();
		//url where swf is at
		var url_logo:String = "logo.swf";
		var url_nav:String = "nav.swf";
		var myLoader:Loader = new Loader();
		var urlReq:URLRequest = new URLRequest(url_nav);

		public function ImageGallery() {
			rect.graphics.beginFill(0xff0000);
			rect.graphics.drawRect(0, 0, 700, 50);
			rect.graphics.endFill();
			//addChildAt(rect,1);
			//trace("test");
			
		}
		public function mkLoader() {
			myLoader.x = 350;
			myLoader.y = 0;
			myLoader.mask = rect;
			myLoader.load(urlReq);
			//addChildAt(myLoader,0);
		}
	}*/
	public class HelloWorld {
		public function sayHello():String {
			var greeting:String = "Hello World!";
			return greeting;
		}
	}
	public class HelloWorld2 extends Sprite {
		public function HelloWorld2() {
			var shad:DropShadowFilter = new DropShadowFilter (2, 45, 0x000000, 25, 3, 3, 2, 2);
			var txt:TextField = new TextField();
			txt.textColor = 0xFFFFFF;
			txt.filters = [shad];
			txt.width = 200;
			txt.x = Math.random() * 300;
			txt.y = Math.random() * 300;
			txt.selectable = false;
			txt.text = "Hello World welcome! [" + Math.round(txt.x) + "," + Math.round(txt.y) + "]";
			addChild(txt);
		}
	}

}