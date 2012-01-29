﻿package {	import flash.display.Sprite;	import flash.events.KeyboardEvent;	import flash.geom.Point;	import org.flintparticles.common.counters.*;	import org.flintparticles.common.displayObjects.RadialDot;	import org.flintparticles.common.initializers.*;	import org.flintparticles.twoD.actions.*;	import org.flintparticles.twoD.emitters.Emitter2D;	import org.flintparticles.twoD.initializers.*;	import org.flintparticles.twoD.renderers.*;	import org.flintparticles.twoD.zones.*;	import org.flintparticles.common.emitters.Emitter;	import lib.CustomEmitters.Emotion;	/**	 * Shows particles that represent emotions. Uses	 * output from a shore emotion abstractor.	 *	 * Emotions:	 * 0: Sad	 * 1: Angry	 * 2: Supprised	 * 3: Happy	 * 	 * Sex:	 * 0: Female	 * 1: Male	 *	 * @author Frank Bos and Jasper Kennis	 */	public class Main extends Sprite	{		var emitter:Emotion;		var renderer:DisplayObjectRenderer;		public function Main():void		{			// Create a Snowfall emitter.			emitter = new Emotion();			// Create a renderer (which renders the created			// particles), and add the emitter to the renderer.			renderer = new DisplayObjectRenderer();			renderer.addEmitter( emitter );			addChild( renderer );			if (stage)			{				stage.addEventListener( KeyboardEvent.KEY_UP, keyUpListener);			}		}		private function keyUpListener(e:KeyboardEvent):void		{			emitter.extendedStart(1,1,1);		}	}}