package view;

import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.Toolkit;

import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JTextArea;
import javax.swing.ListSelectionModel;

import view.botones.BotonActualizar;
import view.botones.BotonCancelar;
import view.botones.BotonGuardar;
import controlador.CtlProveedor;
import controlador.CtlProveedorLista;
import modelo.Proveedor;


import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class ViewCrearProveedor extends JDialog {
	private JTextField txtNombre;
	private JTextField txtTelefono;
	private JTextField txtCelular;
	private JTextArea txtrDireccion;
	private BotonCancelar btnCancelar;
	private BotonGuardar btnGuardar;
	private BotonActualizar btnActualizar;
	private int id;
	private Proveedor myProveedor;
	
	
	/**
	 * @wbp.parser.constructor
	 */
	public ViewCrearProveedor( Proveedor myproveedor,ViewListaProveedor view){
		
		this(view);
		myProveedor=myproveedor;
		cargarDatos();
		btnGuardar.setVisible(false);
		btnActualizar.setVisible(true);
	}
	
	public ViewCrearProveedor(ViewListaProveedor view) {
		super(view,"Agregar proveedor",Dialog.ModalityType.DOCUMENT_MODAL);
		
		setResizable(false);
		getContentPane().setLayout(null);
		
		JLabel lblNombre = new JLabel("Nombre");
		lblNombre.setBounds(24, 4, 52, 25);
		getContentPane().add(lblNombre);
		
		JLabel lblTelefono = new JLabel("Telefono");
		lblTelefono.setBounds(24, 73, 75, 14);
		getContentPane().add(lblTelefono);
		
		txtNombre = new JTextField();
		txtNombre.setBounds(24, 33, 314, 36);
		getContentPane().add(txtNombre);
		txtNombre.setColumns(10);
		
		txtTelefono = new JTextField();
		txtTelefono.setBounds(24, 91, 314, 39);
		getContentPane().add(txtTelefono);
		txtTelefono.setColumns(10);
		
		JLabel lblCelular = new JLabel("Celular");
		lblCelular.setBounds(24, 134, 74, 25);
		getContentPane().add(lblCelular);
		
		txtCelular = new JTextField();
		txtCelular.setBounds(24, 163, 314, 36);
		getContentPane().add(txtCelular);
		txtCelular.setColumns(10);
		
		JLabel lblDireccion = new JLabel("Direccion");
		lblDireccion.setBounds(24, 203, 75, 14);
		getContentPane().add(lblDireccion);
		
		txtrDireccion = new JTextArea();
		txtrDireccion.setBounds(24, 221, 314, 91);
		getContentPane().add(txtrDireccion);
		
		//botones
		btnActualizar=new BotonActualizar();
		btnActualizar.setSize(128, 66);
		btnActualizar.setLocation(24, 341);
		getContentPane().add(btnActualizar);
		btnActualizar.setVisible(false);
		
		btnGuardar = new BotonGuardar();
		btnGuardar.setLocation(24, 362);
		//tnCancelar.setLocation(42, 175);
		getContentPane().add(btnGuardar);
		
		btnCancelar = new BotonCancelar();
		btnCancelar.setSize(128, 66);
		btnCancelar.setLocation(210, 341);
		getContentPane().add(btnCancelar);
		
		setSize(367,456);
		
		//centrar la ventana en la pantalla
		Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
		this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
		
		
		
		
	}
	public int getId(){
		return id;
	}
	public JTextField getTxtNombre(){
		return txtNombre;
	}
	
	public JTextField getTxtTelefono(){
		return txtTelefono;
	}
	
	public JTextField getTxtCelular(){
		return txtCelular;
	}
	public JTextArea getTxtDireccion(){
		return txtrDireccion;
	}
	public BotonActualizar getBtnActualizar(){
		return btnActualizar;
	}
	public BotonGuardar getBtnGuardar(){
		return btnGuardar;
	}
	
	
	public void conectarCtl(CtlProveedor m){
		
		btnGuardar.addActionListener(m);
		btnGuardar.setActionCommand("GUARDAR");
		
		btnActualizar.addActionListener(m);
		btnActualizar.setActionCommand("ACTUALIZAR");

		btnCancelar.addActionListener(m);
		btnCancelar.setActionCommand("CANCELAR");
		 
		
	}
	private void cargarDatos(){
		
		id=myProveedor.getId();
		txtNombre.setText(myProveedor.getNombre());
		txtTelefono.setText(myProveedor.getTelefono());
		txtCelular.setText(myProveedor.getCelular());
		txtrDireccion.setText(myProveedor.getDireccion());
		
	}
	
	
	
	
	


}
