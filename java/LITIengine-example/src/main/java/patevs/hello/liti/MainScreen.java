package patevs.hello.liti;

import java.awt.Color;
import java.awt.Graphics2D;

import de.gurkenlabs.litiengine.graphics.TextRenderer;
import de.gurkenlabs.litiengine.gui.screens.GameScreen;

/**
 * 	Main screen of the game	
 * 
 * 	@author Patrick
 */
public class MainScreen extends GameScreen {

	public MainScreen() {
		super("MainScreen");
	}
	
	@Override
	public void render(final Graphics2D g) {
		super.render(g);
		g.setColor(Color.RED);
		TextRenderer.render(g, "example text", 50, 100);
	}
	
}
