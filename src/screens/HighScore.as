package screens 
{
	import flash.events.Event;
	/**
	 * ...
	 * @author Koen
	 */
	public class HighScore extends Screen
	{
		txtHighScore.text = String(sharedData.data.highScore);
		
		public function HighScore() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			
		}
		
		private function init(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			if (_scores > sharedData.data.highScore) 
				{
				sharedData.data.highScore = _scores;
				sharedData.flush();
				addChild(title);
				} 
		}
		//https://www.youtube.com/watch?v=WmJRsCrlevc
	}

}