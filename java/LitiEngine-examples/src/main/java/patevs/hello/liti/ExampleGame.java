package patevs.hello.liti;

import de.gurkenlabs.litiengine.Game;

/**
 * 	Example LITIengine game
 * 
 * @author Patrick
 */
public class ExampleGame {

	/**
	 * Main method - Application entry point
	 * @param args
	 */
	public static void main(String[] args) {
		// set meta information about the game
		Game.info().setName("ExampleGame");
		// Initialize the game infrastructure
		Game.init(args);
	    // set the icon for the game (this has to be done after initialization because the ScreenManager will not be present otherwise)
	    //Game.window().setIconImage(Resources.images().get("icon.png"));
		// start the game
		Game.start();
		//Game.screens().add(new MainScreen());
		//Game.screens().display(new MainScreen());
		//Game.graphics().renderText(g, "exampleText", 100, 50);
	}
	
	/*
	private static void printCurrentScreen() {
		System.out.println("Currently active screen: " + Game.screens().current().getName());
	}
	*/
	
	/*
	private static void printGameVersion() {
		String gameVersion = Game.info().getVersion();
		System.out.println("\nGame Version: " + gameVersion);
	}
	*/
	
}
