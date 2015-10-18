package view.botones;

import javax.swing.ImageIcon;
import javax.swing.SwingConstants;

public class BotonActualizar extends BotonesApp {

	public BotonActualizar() {
		super("Actualizar");
		// TODO Auto-generated constructor stub
		this.setIcon(new ImageIcon(BotonActualizar.class.getResource("/view/recursos/actualizar_2.png")));
		this.setVerticalTextPosition(SwingConstants.BOTTOM);
		this.setHorizontalTextPosition(SwingConstants.CENTER);
	}

}
