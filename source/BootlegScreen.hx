package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;

class BootlegScreen extends MusicBeatState
{
    public function new() 
        {
            super();
        }
        
        override function create() 
        {
            super.create();
            
            var screen:FlxSprite = new FlxSprite().loadGraphic(Paths.image("bootlegLMAO"));
            
            add(screen);
            
            FlxG.sound.playMusic(Paths.music('creepypasta'));
            
        }
        
        
        override function update(elapsed:Float) 
        {
            super.update(elapsed);
            
            if (controls.ACCEPT)
            {
                fancyOpenURL("https://gamebanana.com/mods/315083");
            }
            
        }
}