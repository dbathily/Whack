//------------------------------------------------------------------------------
// 
// Whack! Game 
// Copyright 2011 BYXB LLC. All Rights Reserved. 
// 
// This software has been licensed to Adobe Systems Inc. for 
// use in educational, training, and for promotional and  
// demonstration purposes. All rights are otherwise retained 
// by BYXB LLC and subject to the following license: 
// 
// The software code contained herein is licensed under the Creative 
// Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.  
// To view this license, see http://creativecommons.org/licenses/by-nc- 
// sa/3.0/ or send a letter to Creative Commons, 444 Castro Street,  
// Suite 900, Mountain View, California, 94041, USA. 
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,  
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON- 
// INFRINGEMENT. IN NO EVENT SHALL BYXB LLC BE LIABLE FOR ANY CLAIM,  
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH  
// THE SOFTWARE OR THE USE, MISUSE, OR INABILITY TO USE THE SOFTWARE. 
// 
// For more information see http://www.byxb.com/. 
//
//------------------------------------------------------------------------------

package data {
	
	/**
	 * Creates a new game.  Each game has its own achievements, inventory, and stats.  
	 * @author Johnny Nguyen - Johnny [at] byxb [dot] com
	 */
	public class SavedGame extends Object {
		private var _savedSlot:uint;

		public function get savedSlot():uint{return _savedSlot;}
		public function set savedSlot(value:uint):void {_savedSlot = value;}

		public var _achievements:Achievements = new Achievements();
		public var _inventory:Inventory = new Inventory();
		public var _stats:Stats = new Stats();
		
		public function get achievements():Achievements {return _achievements;}
		public function get inventory():Inventory {return _inventory;}
		public function get stats():Stats {return _stats;}
		
		/**
		 * Creates a new game.
		 * @param slot The slot of the game.
		 */
		public function SavedGame(slot:uint = 0) {
			_savedSlot = slot;	
		} 
	}
}