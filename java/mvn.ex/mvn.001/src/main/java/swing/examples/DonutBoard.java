package swing.examples;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.geom.Ellipse2D;

import javax.swing.JPanel;

/**
 * The board is the panel where the graphics are drawn to.
 * 	The objects on the board are either images or are drawn 
 * 	with the painting tools provided by the Java 2D API.
 *  
 * 	In this example, we draw a donut shape. 
 *
 */
@SuppressWarnings("serial")
public class DonutBoard extends JPanel {
	/*
	 * The painting is done inside the paintComponent() method.
	 * @see javax.swing.JComponent#paintComponent(java.awt.Graphics)
	 */
    @Override
    public void paintComponent(Graphics g) {
        super.paintComponent(g);

        drawDonut(g);
    }

	/*
	 * The Graphics2D class extends the Graphics class. 
	 * It provides more sophisticated control over geometry, 
	 * coordinate transformations, colour management, and text layout.
	 */
    // delegate the actual painting to a specific method
    private void drawDonut(Graphics g) {

        Graphics2D g2d = (Graphics2D) g;

        // rendering hints are used to make the drawing smooth.
        RenderingHints rh
                = new RenderingHints(RenderingHints.KEY_ANTIALIASING,
                        RenderingHints.VALUE_ANTIALIAS_ON);

        rh.put(RenderingHints.KEY_RENDERING,
                RenderingHints.VALUE_RENDER_QUALITY);

        g2d.setRenderingHints(rh);

        // get the height and the width of the window
        Dimension size = getSize();
        double w = size.getWidth();
        double h = size.getHeight();

        // drawn an ellipse
        Ellipse2D e = new Ellipse2D.Double(0, 0, 80, 130);
        g2d.setStroke(new BasicStroke(1));
        g2d.setColor(Color.GREEN);

        // Here the ellipse is rotated 72 times to create a donut shape
        for (double deg = 0; deg < 360; deg += 5) {
            AffineTransform at
                    = AffineTransform.getTranslateInstance(w/2, h/2);
            at.rotate(Math.toRadians(deg));
            g2d.draw(at.createTransformedShape(e));
        }
    }
}
