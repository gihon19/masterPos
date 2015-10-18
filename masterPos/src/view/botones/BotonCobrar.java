package view.botones;

import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.SwingConstants;

public class BotonCobrar extends BotonesApp {
private ImageIcon imgGuardar;
	
	
	public BotonCobrar(){
			super("F3 Cobrar");
			
			/*imgGuardar=new ImageIcon(BotonCancelar.class.getResource("/view/recursos/Facturacion.png"));
			
			 Image image = imgGuardar.getImage();
			    // reduce by 50%
			 image = image.getScaledInstance(image.getWidth(null)/7, image.getHeight(null)/7, Image.SCALE_SMOOTH);
			 imgGuardar.setImage(image);
		
			this.setIcon(imgGuardar);*/
			this.setIcon(new ImageIcon(BotonActualizar.class.getResource("/view/recursos/cobrar_2.png")));
			this.setVerticalTextPosition(SwingConstants.BOTTOM);
			this.setHorizontalTextPosition(SwingConstants.CENTER);
				
			
		}

}
