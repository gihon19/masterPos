package view.botones;

import javax.swing.ImageIcon;

public class BotonMenos extends BotonesApp {

	public BotonMenos() {
		// TODO Auto-generated constructor stub
		setIcon(new ImageIcon(BotonAgregar.class.getResource("/view/recursos/menos2.png"))); // NOI18N
		//this.setSize(200, 100);.
		setToolTipText("Menos");
	}

}
