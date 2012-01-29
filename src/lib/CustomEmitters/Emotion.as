﻿package lib.CustomEmitters{	import flash.geom.Point;	import org.flintparticles.common.counters.*;	import org.flintparticles.common.displayObjects.RadialDot;	import org.flintparticles.common.initializers.*;	import org.flintparticles.twoD.actions.*;	import org.flintparticles.twoD.emitters.Emitter2D;	import org.flintparticles.twoD.initializers.*;	import org.flintparticles.twoD.zones.*;	/**	 * Creates one single particle with a predefined	 * behaivoir and a varialbe color, shape and size	 * when start is called.	 *	 * @author Frank Bos and Jasper Kennis	 */	public class Emotion extends Emitter2D	{		private var _imgClass:ImageClass;		private var _zone:LineZone;		private var _position:Position;		private var _zone2:PointZone;		private var _velocity:Velocity;		private var _dzone:RectangleZone;		private var _deathZone:DeathZone;		private var _scaleImage:ScaleImageInit;		public function Emotion()		{			// Add a counter to the emitter, which tells the emitter			// how many particles should be emitted every second. A			// steady counter continues to create particles.			counter = new Blast(1);			// Create a shape to render and tell the emitter to use			// that shape.			_imgClass = new ImageClass(RadialDot,[2]);			addInitializer( _imgClass );			// Create a zone where the particles are created.			_zone = new LineZone(new Point(-5,-5),new Point(505,-5));			_position = new Position(_zone);			addInitializer( _position );			// Create a direction in which particles will move.			_zone2 = new PointZone(new Point(0,65));			_velocity = new Velocity(_zone2);			addInitializer( _velocity );			// Add the move and drift action to the emitter.			addAction( new Move() );			addAction( new RandomDrift( 15, 15 ) );			addAction( new Collide( 1 ) );      		addAction( new BoundingBox( 0, 0, 500, 400, 1 ) );		}		/**		 * A custom start method that applies desireable changes		 * to the display object before creating it.		 */		public function extendedStart(age:int, sex:int, emotion:int):void		{			super.start();		}	}}