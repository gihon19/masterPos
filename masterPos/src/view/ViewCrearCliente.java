package view;

import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JTextField;

import view.botones.BotonActualizar;
import view.botones.BotonCancelar;
import view.botones.BotonGuardar;
import controlador.CtlCliente;

public class ViewCrearCliente extends JDialog{
	private JTextField txtNombre;
	private JTextField txtDireccion;
	private JTextField txtTelefono;
	private JTextField txtMovil;
	private JTextField txtRtn;
	
	private BotonCancelar btnCancelar;
	private BotonActualizar btnActualizar;
	private BotonGuardar btnGuardar;
	
	public ViewCrearCliente() {
		setTitle("Crear Cliente");
		
		this.setSize(365,459);
		getContentPane().setLayout(null);
		
		JLabel lblNombre = new JLabel("Nombre:");
		lblNombre.setBounds(25, 5, 60, 14);
		getContentPane().add(lblNombre);
		
		txtNombre = new JTextField();
		txtNombre.setBounds(25, 24, 311, 32);
		getContentPane().add(txtNombre);
		txtNombre.setColumns(10);
		
		JLabel lblDireccion = new JLabel("Direccion:");
		lblDireccion.setBounds(25, 61, 64, 14);
		getContentPane().add(lblDireccion);
		
		txtDireccion = new JTextField();
		txtDireccion.setBounds(25, 80, 311, 32);
		getContentPane().add(txtDireccion);
		txtDireccion.setColumns(10);
		
		JLabel lblTelefono = new JLabel("Telefono:");
		lblTelefono.setBounds(25, 117, 60, 14);
		getContentPane().add(lblTelefono);
		
		txtTelefono = new JTextField();
		txtTelefono.setBounds(25, 136, 311, 32);
		getContentPane().add(txtTelefono);
		txtTelefono.setColumns(10);
		
		JLabel lblMovil = new JLabel("Movil:");
		lblMovil.setBounds(25, 173, 64, 14);
		getContentPane().add(lblMovil);
		
		txtMovil = new JTextField();
		txtMovil.setBounds(25, 192, 311, 32);
		getContentPane().add(txtMovil);
		txtMovil.setColumns(10);
		
		JLabel lblRtn = new JLabel("RTN:");
		lblRtn.setBounds(25, 229, 60, 14);
		getContentPane().add(lblRtn);
		
		txtRtn = new JTextField();
		txtRtn.setBounds(25, 248, 311, 32);
		getContentPane().add(txtRtn);
		txtRtn.setColumns(10);
		
		// botones de accion
		btnCancelar = new BotonCancelar();
		btnCancelar.setSize(128, 80);
		btnCancelar.setLocation(208, 311);
		getContentPane().add(btnCancelar);
		
		btnGuardar = new BotonGuardar();	
		btnGuardar.setSize(128, 80);
		btnGuardar.setLocation(25, 311);
		getContentPane().add(btnGuardar);
		
		btnActualizar=new BotonActualizar();
		btnActualizar.setSize(128, 80);
		btnActualizar.setLocation(25, 311);
		btnActualizar.setVisible(false);
		getContentPane().add(btnActualizar);
		
		
	}
	public JTextField getTxtNombre(){
		return txtNombre;
	}
	public  JTextField getTxtDireccion(){
		return  txtDireccion;
	}
	public JTextField getTxtTelefono(){
		return txtTelefono;
	}
	public JTextField getTxtMovil(){
		return txtMovil;
	}
	public JTextField getTxtRtn(){
		return txtRtn;
	}
	public BotonActualizar getBtnActualizar(){
		return btnActualizar;
	}
	public BotonGuardar getBtnGuardar(){
		return btnGuardar;
	}
	public void conectarControlador(CtlCliente c){
		
		btnCancelar.addActionListener(c);
		btnCancelar.setActionCommand("CANCELAR");
		
		btnGuardar.addActionListener(c);
		btnGuardar.setActionCommand("GUARDAR");
		
		btnActualizar.addActionListener(c);
		btnActualizar.setActionCommand("ACTUALIZAR");
	}
	public void configActualizar() {
		// TODO Auto-generated method stub
		this.btnActualizar.setVisible(true);
		this.btnGuardar.setVisible(false);
		
	}
}
