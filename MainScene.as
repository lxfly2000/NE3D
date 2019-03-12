package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	
	public class MainScene extends MovieClip {
		
		public var ___layerDepthEnabled___;
		public var loopMode;
		
		private var fpsCounter:TextField;
		private var fpsTimer:Timer;
		private var frameCounter:int;
		
		public function MainScene() {
			frameCounter=0;
			fpsCounter=new TextField;
			fpsCounter.x=0;
			fpsCounter.y=0;
			fpsCounter.width=60;
			fpsCounter.height=20;
			fpsCounter.textColor=0xFFFFFFFF;
			addChild(fpsCounter);
			fpsTimer=new Timer(1000);
			fpsTimer.addEventListener(TimerEvent.TIMER,OnTimer);
			fpsTimer.start();
			addEventListener(Event.ENTER_FRAME,OnEnterFrame);
			trace("Object num: "+numChildren);
		}
		
		public function OnEnterFrame(e:Event){
			frameCounter++;
		}
		
		public function OnTimer(e:TimerEvent){
			fpsCounter.text="FPS: "+frameCounter;
			frameCounter=0;
		}
	}
	
}
