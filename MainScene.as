package  {
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	
	
	public class MainScene extends MovieClip {
		
		public var loopMode;
		public var ___layerDepthEnabled___;
		
		
		public function MainScene() {
			var textTitle:TextField=new TextField;
			textTitle.text="TODO: Fill the title.";
			textTitle.x=(width-textTitle.width)/2;
			textTitle.y=height/2;
			textTitle.name="textTitle";
			addChild(textTitle);
		}
	}
	
}
