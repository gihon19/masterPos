package view;

import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.GraphicsConfiguration;
import java.awt.Toolkit;
import java.awt.Window;

import javax.swing.JDialog;

import view.rendes.PanelPadre;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.SwingConstants;

public class ViewCuentaEfectivo extends JDialog {
	private JTextField txtUno;
	private JTextField txtDos;
	private JTextField txtCinco;
	private JTextField txtDiez;
	private JTextField txtVeinte;
	private JTextField txtCincuenta;
	private JTextField txtCien;
	private JTextField txtQuinientos;

	public ViewCuentaEfectivo(Window v) {
		// TODO Auto-generated constructor stub
		
		super(v,"Contar Efectivo",Dialog.ModalityType.DOCUMENT_MODAL);
		getContentPane().setLayout(null);
		getContentPane().setBackground(PanelPadre.color1);
		
		txtUno = new JTextField();
		txtUno.setBounds(41, 22, 171, 30);
		getContentPane().add(txtUno);
		txtUno.setColumns(10);
		
		JLabel lblLempiras = new JLabel("1");
		lblLempiras.setHorizontalAlignment(SwingConstants.RIGHT);
		lblLempiras.setBounds(8, 22, 25, 30);
		getContentPane().add(lblLempiras);
		
		txtDos = new JTextField();
		txtDos.setBounds(43, 74, 171, 30);
		getContentPane().add(txtDos);
		txtDos.setColumns(10);
		
		txtCinco = new JTextField();
		txtCinco.setBounds(41, 126, 171, 30);
		getContentPane().add(txtCinco);
		txtCinco.setColumns(10);
		
		txtDiez = new JTextField();
		txtDiez.setBounds(41, 178, 171, 30);
		getContentPane().add(txtDiez);
		txtDiez.setColumns(10);
		
		txtVeinte = new JTextField();
		txtVeinte.setBounds(253, 22, 171, 30);
		getContentPane().add(txtVeinte);
		txtVeinte.setColumns(10);
		
		txtCincuenta = new JTextField();
		txtCincuenta.setBounds(251, 74, 171, 30);
		getContentPane().add(txtCincuenta);
		txtCincuenta.setColumns(10);
		
		txtCien = new JTextField();
		txtCien.setBounds(253, 126, 171, 30);
		getContentPane().add(txtCien);
		txtCien.setColumns(10);
		
		txtQuinientos = new JTextField();
		txtQuinientos.setBounds(253, 178, 171, 30);
		getContentPane().add(txtQuinientos);
		txtQuinientos.setColumns(10);
		
		JLabel lblDos = new JLabel("2");
		lblDos.setHorizontalAlignment(SwingConstants.RIGHT);
		lblDos.setBounds(9, 74, 25, 30);
		getContentPane().add(lblDos);
		
		JLabel lblCinco = new JLabel("5");
		lblCinco.setHorizontalAlignment(SwingConstants.RIGHT);
		lblCinco.setBounds(8, 126, 25, 30);
		getContentPane().add(lblCinco);
		
		JLabel lblDiez = new JLabel("10");
		lblDiez.setHorizontalAlignment(SwingConstants.RIGHT);
		lblDiez.setBounds(8, 178, 25, 30);
		getContentPane().add(lblDiez);
		
		JLabel lblVeinte = new JLabel("20");
		lblVeinte.setBounds(220, 22, 35, 30);
		getContentPane().add(lblVeinte);
		
		JLabel lblCincuenta = new JLabel("50");
		lblCincuenta.setBounds(223, 74, 32, 30);
		getContentPane().add(lblCincuenta);
		
		JLabel lblCien = new JLabel("100");
		lblCien.setBounds(220, 126, 35, 30);
		getContentPane().add(lblCien);
		
		JLabel lblQuinientos = new JLabel("500");
		lblQuinientos.setBounds(220, 178, 35, 30);
		getContentPane().add(lblQuinientos);
		this.setResizable(false);
		setSize(432,256);
		Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
		this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
		
	}
}
