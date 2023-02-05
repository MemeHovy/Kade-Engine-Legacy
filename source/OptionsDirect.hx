import flixel.addons.transition.FlxTransitionableState;
import flixel.FlxG;
import flixel.FlxSprite;

class OptionsDirect extends MusicBeatState {
	override function create() {
		Paths.clearStoredMemory();
		Paths.clearUnusedMemory();

		transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

		persistentUpdate = true;

		var menuBG:FlxSprite = new FlxSprite().loadGraphic(Paths.image("menuDesat"));
		menuBG.color = 0xFFea71fd;
		menuBG.setGraphicSize(Std.int(menuBG.width * 1.1));
		menuBG.updateHitbox();
		menuBG.screenCenter();
		menuBG.antialiasing = FlxG.save.data.antialiasing;
		add(menuBG);

		openSubState(new OptionsMenu());
	}
	public static function reset()
	{
		FlxG.resetState();
	}
}
