package view;

import javax.swing.JPanel;

import view.botones.BotonesApp;

import java.awt.GridLayout;
import javax.swing.JButton;
import java.awt.GridBagLayout;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import java.awt.event.ActionListener;

public class ViewTecladoNumerico extends JPanel {

	private JButton btnSiete;
	private JButton btnOcho;
	private JButton btnNueve;
	private JButton btnEnter;
	private JButton btnCuatro;
	private JButton btnCinco;
	private JButton btnSeis;
	private JButton btnUno;
	private JButton btnDos;
	private JButton btnTres;
	private JButton btnCero;
	private JButton btnPunto;
	private JButton btnBorrar;

	public ViewTecladoNumerico() {
		
		this.setPreferredSize(new Dimension(443, 300));
		GridBagLayout gridBagLayout = new GridBagLayout();
		gridBagLayout.columnWidths = new int[]{109, 109, 109, 109, 0};
		gridBagLayout.rowHeights = new int[]{75, 75, 75, 75, 0};
		gridBagLayout.columnWeights = new double[]{0.0, 0.0, 0.0, 0.0, Double.MIN_VALUE};
		gridBagLayout.rowWeights = new double[]{0.0, 0.0, 0.0, 0.0, Double.MIN_VALUE};
		setLayout(gridBagLayout);
		
		btnSiete = new BotonesApp("7");
		GridBagConstraints gbc_btnSiete = new GridBagConstraints();
		gbc_btnSiete.fill = GridBagConstraints.BOTH;
		gbc_btnSiete.insets = new Insets(0, 0, 5, 5);
		gbc_btnSiete.gridx = 0;
		gbc_btnSiete.gridy = 0;
		add(btnSiete, gbc_btnSiete);
		
		btnOcho = new BotonesApp("8");
		GridBagConstraints gbc_btnOcho = new GridBagConstraints();
		gbc_btnOcho.fill = GridBagConstraints.BOTH;
		gbc_btnOcho.insets = new Insets(0, 0, 5, 5);
		gbc_btnOcho.gridx = 1;
		gbc_btnOcho.gridy = 0;
		add(btnOcho, gbc_btnOcho);
		
		btnNueve = new BotonesApp("9");
		GridBagConstraints gbc_btnNueve = new GridBagConstraints();
		gbc_btnNueve.fill = GridBagConstraints.BOTH;
		gbc_btnNueve.insets = new Insets(0, 0, 5, 5);
		gbc_btnNueve.gridx = 2;
		gbc_btnNueve.gridy = 0;
		add(btnNueve, gbc_btnNueve);
		
		btnBorrar = new BotonesApp("Borrar");
		GridBagConstraints gbc_btnBorrar = new GridBagConstraints();
		gbc_btnBorrar.fill = GridBagConstraints.BOTH;
		gbc_btnBorrar.insets = new Insets(0, 0, 5, 0);
		gbc_btnBorrar.gridx = 3;
		gbc_btnBorrar.gridy = 0;
		add(btnBorrar, gbc_btnBorrar);
		
		btnEnter = new BotonesApp("Enter");
		GridBagConstraints gbc_btnEnter = new GridBagConstraints();
		gbc_btnEnter.gridheight = 3;
		gbc_btnEnter.fill = GridBagConstraints.BOTH;
		gbc_btnEnter.gridx = 3;
		gbc_btnEnter.gridy = 1;
		add(btnEnter, gbc_btnEnter);
		
		btnCuatro = new BotonesApp("4");
		GridBagConstraints gbc_btnCuatro = new GridBagConstraints();
		gbc_btnCuatro.fill = GridBagConstraints.BOTH;
		gbc_btnCuatro.insets = new Insets(0, 0, 5, 5);
		gbc_btnCuatro.gridx = 0;
		gbc_btnCuatro.gridy = 1;
		add(btnCuatro, gbc_btnCuatro);
		
		btnCinco = new BotonesApp("5");
		GridBagConstraints gbc_btnCinco = new GridBagConstraints();
		gbc_btnCinco.fill = GridBagConstraints.BOTH;
		gbc_btnCinco.insets = new Insets(0, 0, 5, 5);
		gbc_btnCinco.gridx = 1;
		gbc_btnCinco.gridy = 1;
		add(btnCinco, gbc_btnCinco);
		
		btnSeis = new BotonesApp("7");
		btnSeis.setText("6");
		GridBagConstraints gbc_btnSeis = new GridBagConstraints();
		gbc_btnSeis.fill = GridBagConstraints.BOTH;
		gbc_btnSeis.insets = new Insets(0, 0, 5, 5);
		gbc_btnSeis.gridx = 2;
		gbc_btnSeis.gridy = 1;
		add(btnSeis, gbc_btnSeis);
		
		btnUno = new BotonesApp("1");
		GridBagConstraints gbc_btnUno = new GridBagConstraints();
		gbc_btnUno.fill = GridBagConstraints.BOTH;
		gbc_btnUno.insets = new Insets(0, 0, 5, 5);
		gbc_btnUno.gridx = 0;
		gbc_btnUno.gridy = 2;
		add(btnUno, gbc_btnUno);
		
		btnDos = new BotonesApp("2");
		GridBagConstraints gbc_btnDos = new GridBagConstraints();
		gbc_btnDos.fill = GridBagConstraints.BOTH;
		gbc_btnDos.insets = new Insets(0, 0, 5, 5);
		gbc_btnDos.gridx = 1;
		gbc_btnDos.gridy = 2;
		add(btnDos, gbc_btnDos);
		
		btnTres = new BotonesApp("3");
		GridBagConstraints gbc_btnTres = new GridBagConstraints();
		gbc_btnTres.fill = GridBagConstraints.BOTH;
		gbc_btnTres.insets = new Insets(0, 0, 5, 5);
		gbc_btnTres.gridx = 2;
		gbc_btnTres.gridy = 2;
		add(btnTres, gbc_btnTres);
		
		btnCero = new BotonesApp("0");
		GridBagConstraints gbc_btnCero = new GridBagConstraints();
		gbc_btnCero.gridwidth = 2;
		gbc_btnCero.fill = GridBagConstraints.BOTH;
		gbc_btnCero.insets = new Insets(0, 0, 0, 5);
		gbc_btnCero.gridx = 0;
		gbc_btnCero.gridy = 3;
		add(btnCero, gbc_btnCero);
		
		btnPunto = new BotonesApp(".");
		GridBagConstraints gbc_btnPunto = new GridBagConstraints();
		gbc_btnPunto.fill = GridBagConstraints.BOTH;
		gbc_btnPunto.insets = new Insets(0, 0, 0, 5);
		gbc_btnPunto.gridx = 2;
		gbc_btnPunto.gridy = 3;
		add(btnPunto, gbc_btnPunto);
		// TODO Auto-generated constructor stub
	}
	
	public JButton getBtnEnter(){
		return btnEnter;
	}
	
	public void conectarCtl(ActionListener c){
		btnCero.addActionListener(c);
		btnCero.setActionCommand("CERO");
		
		btnPunto.addActionListener(c);
		btnPunto.setActionCommand("PUNTO");
		
		btnUno.addActionListener(c);
		btnUno.setActionCommand("UNO");
		
		btnDos.addActionListener(c);
		btnDos.setActionCommand("DOS");
		
		btnTres.addActionListener(c);
		btnTres.setActionCommand("TRES");
		
		btnCuatro.addActionListener(c);
		btnCuatro.setActionCommand("CUATRO");
		
		btnCinco.addActionListener(c);
		btnCinco.setActionCommand("CINCO");
		
		btnSeis.addActionListener(c);
		btnSeis.setActionCommand("SEIS");
		
		btnSiete.addActionListener(c);
		btnSiete.setActionCommand("SIETE");
		
		btnOcho.addActionListener(c);
		btnOcho.setActionCommand("OCHO");
		
		btnNueve.addActionListener(c);
		btnNueve.setActionCommand("NUEVE");
		
		/*btnEnter.addActionListener(c);
		btnEnter.setActionCommand("ENTER");*/
		
		btnBorrar.addActionListener(c);
		btnBorrar.setActionCommand("BORRAR");
	}

}
