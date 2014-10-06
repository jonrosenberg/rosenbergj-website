﻿package interactive.gallery{	import flash.display.*;	import flash.events.*;	import fl.transitions.*;	import fl.transitions.easing.*;	import flash.filters.*;	import flash.net.*;	public class ImageGallery extends MovieClip	{		var xml:XML;		var xmlList:XMLList;		var xmlLoader:URLLoader = new URLLoader();		var container:MovieClip = new MovieClip();		var imageLoader:Loader;		var segments:Number;		var currentSegment:int;		var fullLoader:Loader = new Loader();		var xmlPath:String;		var thumbAtt:String;		var fullAtt:String		public function ImageGallery(path:String,thumb:String, full:String)		{			xmlPath = path;			thumbAtt = thumb;			fullAtt = full;			container.x = 25;			container.y = 25;			fullLoader.x = 200;			fullLoader.y = 25;			container.addEventListener(MouseEvent.MOUSE_MOVE, changeThumb);			container.addEventListener(MouseEvent.CLICK, showPicture);			xmlLoader.load(new URLRequest(xmlPath));			xmlLoader.addEventListener(Event.COMPLETE, xmlLoaded);			container.filters = [new DropShadowFilter()];			addChild(container);			addChild(fullLoader);		}		function xmlLoaded(event:Event):void		{			xml = XML(event.target.data);			xmlList = xml.children();			for (var i:int = 0; i < xmlList.length(); i++)			{				imageLoader = new Loader();				imageLoader.load(new URLRequest(xmlList[i].attribute(thumbAtt)));				container.addChild(imageLoader);			}		}		function changeThumb(event:MouseEvent):void		{			segments = container.width / container.numChildren;			currentSegment = Math.floor(container.mouseX / segments);			if (currentSegment <= container.numChildren - 1)			{				for (var j:int = 0; j < container.numChildren; j++)				{					container.getChildAt(j).visible = false;				}				container.getChildAt(currentSegment).visible = true;			}		}		function showPicture(event:MouseEvent):void		{			fullLoader.unload();			fullLoader.load(new URLRequest(xmlList[currentSegment].attribute(fullAtt)));		}	}}