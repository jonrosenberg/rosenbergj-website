package jonbasics{
	import flash.display.Loader;
	import flash.net.URLRequest;

	import flash.events.*;
	import fl.transitions.*;
	import fl.transitions.easing.*;
	import flash.filters.*;
	import flash.net.*;

	public class loadSwf extends MovieClip {
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
			addChild(rect);
		}
		public function myLoader() {
			myLoader.x = 350;
			myLoader.y = 0;
			myLoader.mask = rect;
			myLoader.load(urlReq);
			addChild(myLoader);
		}
	}
}