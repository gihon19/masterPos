package view.botones;

import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.SwingConstants;

public class BotonCancelar extends BotonesApp {
	private ImageIcon imgCancelar;
	public BotonCancelar(){
		super("Cancelar");
		
		/*imgCancelar=new ImageIcon(BotonCancelar.class.getResource("/view/recursos/cerrar_2.png"));
		
		 Image image = imgCancelar.getImage();
		    // reduce by 50%
		 image = image.getScaledInstance(image.getWidth(null)/4, image.getHeight(null)/4, Image.SCALE_SMOOTH);
		 imgCancelar.setImage(image);
	
		this.setIcon(imgCancelar);*/
		this.setIcon(new ImageIcon(BotonActualizar.class.getResource("/view/recursos/cerrar_2.png")));
		this.setVerticalTextPosition(SwingConstants.BOTTOM);
		this.setHorizontalTextPosition(SwingConstants.CENTER);
	}

}
