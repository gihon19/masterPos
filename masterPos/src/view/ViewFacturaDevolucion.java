package view;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.SystemColor;
import java.awt.Toolkit;
import java.awt.Window;

import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SwingConstants;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;

import controlador.CtlDevoluciones;
import controlador.CtlFacturar;
import view.botones.BotonActualizar;
import view.botones.BotonBuscar1;
import view.botones.BotonBuscarClientes;
import view.botones.BotonCancelar;
import view.botones.BotonCobrar;
import view.botones.BotonGuardar;
import view.rendes.RenderizadorTablaFactura;
import view.tablemodel.CbxTmEmpleado;
import view.tablemodel.TablaModeloFactura;
import view.tablemodel.TmDevoluciones;
import javax.swing.UIManager;

public class ViewFacturaDevolucion extends JDialog {
	
	protected BorderLayout miEsquema;
	private JTable tableDetalle;
	private TmDevoluciones modeloTabla;
	
	private JPanel panelAcciones;
	private JPanel panelDatosFactura;
	private JLabel lblFecha;
	private JTextField txtFechafactura;
	private JLabel lblCodigoCliente;
	private JTextField txtIdcliente;
	private JTextField txtNombrecliente;
	
	private ButtonGroup grupoOpciones;
	private JRadioButton rdbtnCredito;
	private JRadioButton rdbtnContado;
	
	private JTextField txtSubtotal;
	private JLabel lblSubtotal;
	private JTextField txtImpuesto;
	private JLabel lblImpuesto;
	private JTextField txtTotal;
	private JLabel lblTotal;
	private JLabel lblNombreCliente;
	private JLabel lblContado;
	private JLabel lblCredito;
	
	private BotonGuardar btnGuardar;
	private BotonCancelar btnCerrar;
	private BotonBuscar1 btnBuscar;
	private BotonBuscarClientes btnCliente;
	private BotonCobrar btnCobrar;
	private JButton btnCierreCaja;
	
	private JTextField txtDescuento;
	
	private BotonActualizar btnActualizar;
	private JTextField txtImpuesto18;
	private JButton btnPendientes;
	
	private JTextField txtRtn;
	
	private JComboBox cbxEmpleados;
	//se crea el modelo de la lista de los impuestos
	private CbxTmEmpleado modeloEmpleado;//=new ComboBoxImpuesto();
	private JPanel panel;

	public ViewFacturaDevolucion(Window view) {
		
		super(view,"Facturar",Dialog.ModalityType.DOCUMENT_MODAL);
		setIconImage(Toolkit.getDefaultToolkit().getImage(ViewFacturar.class.getResource("/view/recursos/logo-admin-tool1.png")));
		//getContentPane().setLayout(new BorderLayout(0, 0));
		
		
		grupoOpciones = new ButtonGroup();
		modeloEmpleado=new CbxTmEmpleado();
		modeloTabla=new TmDevoluciones();
		RenderizadorTablaFactura renderizador = new RenderizadorTablaFactura();
		miEsquema=new BorderLayout();
		Color color1 =Color.decode("#0009999");
		Color color2 =Color.decode("#33cccc");
		Color color3 =Color.decode("#d4f4ff");
		Color color4 =Color.decode("#f4fbfe");
	
		this.getContentPane().setBackground(color4);
		
		//this.setTitle("Articulos");
		getContentPane().setLayout(miEsquema);
		panelAcciones=new JPanel();
		panelAcciones.setBackground(color1);
		//panelAcciones.setBounds(20, 11, 178, 459);
		//panelAcciones.setLayout(null);
		//panelAcciones.setVisible(false);
		JPanel panelNorte=new JPanel();
		panelNorte.setBackground(color1);
		getContentPane().add(panelNorte, BorderLayout.SOUTH);
		
		
		
		panelDatosFactura=new JPanel();
		panelDatosFactura.setBackground(color3);
		getContentPane().add(panelDatosFactura, BorderLayout.NORTH);
		
		//panelDatosFactura.setBackground(Color.WHITE);
		panelDatosFactura.setBorder(new TitledBorder(new LineBorder(new Color(130, 135, 144)), "Datos Generales", TitledBorder.LEFT, TitledBorder.TOP, null, new Color(0, 0, 0)));
		//panelDatosFactura.setBounds(196, 11, 802, 84);
		//panelDatosFactura.setVisible(false);
		panelDatosFactura.setLayout(new GridLayout(0, 7, 10, 0));
		/*GridBagConstraints gbc_panelDatosFactura = new GridBagConstraints();
		gbc_panelDatosFactura.fill = GridBagConstraints.HORIZONTAL;
		gbc_panelDatosFactura.insets = new Insets(0, 0, 5, 5);
		gbc_panelDatosFactura.gridx = 0; // El área de texto empieza en la columna cero.
		gbc_panelDatosFactura.gridy = 0; // El área de texto empieza en la fila cero
		gbc_panelDatosFactura.gridwidth = 1; // El área de texto ocupa dos columnas.
		gbc_panelDatosFactura.gridheight = 1; // El área de texto ocupa 2 filas.
		panelNorte.add(panelDatosFactura, gbc_panelDatosFactura);*/
		lblFecha = new JLabel("Fecha");
		panelDatosFactura.add(lblFecha);
		
		lblCodigoCliente = new JLabel("Id Cliente");
		panelDatosFactura.add(lblCodigoCliente);
		
		lblNombreCliente = new JLabel("Nombre Cliente");
		panelDatosFactura.add(lblNombreCliente);
		
		
		JLabel lblRtn = new JLabel("R:T:N");
		panelDatosFactura.add(lblRtn);
		
		lblContado = new JLabel("Contado");
		panelDatosFactura.add(lblContado);
		
		lblCredito = new JLabel("Credito");
		panelDatosFactura.add(lblCredito);
		
		JLabel lblVendedor = new JLabel("Vendedor");
		panelDatosFactura.add(lblVendedor);
		
		txtFechafactura = new JTextField();
		txtFechafactura.setEditable(false);
		panelDatosFactura.add(txtFechafactura);
		txtFechafactura.setColumns(10);
		
		txtIdcliente = new JTextField();
		panelDatosFactura.add(txtIdcliente);
		txtIdcliente.setColumns(10);
		
		txtNombrecliente = new JTextField();
		txtNombrecliente.setToolTipText("Nombre Cliente");
		panelDatosFactura.add(txtNombrecliente);
		txtNombrecliente.setColumns(10);
		
		txtRtn = new JTextField();
		panelDatosFactura.add(txtRtn);
		txtRtn.setColumns(10);
		
		rdbtnContado = new JRadioButton("");
		rdbtnContado.setSelected(true);
		grupoOpciones.add(rdbtnContado);
		panelDatosFactura.add(rdbtnContado);
		rdbtnCredito = new JRadioButton("");
		grupoOpciones.add(rdbtnCredito);
		panelDatosFactura.add(rdbtnCredito);
		
		cbxEmpleados = new JComboBox();
		//cbxEmpleados.setModel(modeloEmpleado);//comentar para moder ver la vista de diseño
		panelDatosFactura.add(cbxEmpleados);
		
		
		tableDetalle = new JTable();
		tableDetalle.setModel(modeloTabla);
		tableDetalle.setBackground(color4);
		tableDetalle.setDefaultRenderer(String.class, renderizador);
		//tableDetalle.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		tableDetalle.getColumnModel().getColumn(0).setPreferredWidth(100);     //Tamaño de las columnas de las tablas
		tableDetalle.getColumnModel().getColumn(1).setPreferredWidth(200);	//
		tableDetalle.getColumnModel().getColumn(2).setPreferredWidth(80);	//
		tableDetalle.getColumnModel().getColumn(3).setPreferredWidth(80);	//
		tableDetalle.getColumnModel().getColumn(4).setPreferredWidth(80);	//
		tableDetalle.getColumnModel().getColumn(5).setPreferredWidth(80);	//
		tableDetalle.getColumnModel().getColumn(6).setPreferredWidth(80);	//
		tableDetalle.getColumnModel().getColumn(7).setPreferredWidth(100);	//
		
		tableDetalle.setRowHeight(30);
		//registerEnterKey( );
		
		JScrollPane scrollPane = new JScrollPane(tableDetalle);
		/*GridBagConstraints gbc_scrollPane = new GridBagConstraints();
		gbc_scrollPane.fill = GridBagConstraints.BOTH;
		gbc_scrollPane.insets = new Insets(0, 0, 0, 5);
		gbc_scrollPane.gridx = 0;
		gbc_scrollPane.gridy = 2;
		panelNorte.add(scrollPane, gbc_scrollPane);*/
		
		scrollPane.setBackground(color4);
		getContentPane().add(scrollPane, BorderLayout.CENTER);
		
		//panelNorte.add(scrollPane);
		//scrollPane.setBounds(196, 144, 802, 326);
		//panelNorte
		
		//this.setTitle("Facturar");
		getContentPane().add(panelAcciones, BorderLayout.WEST);
		panelAcciones.setLayout(new GridLayout(8, 1, 0, 0));
		
		btnBuscar = new BotonBuscar1();
		btnBuscar.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnBuscar.setForeground(Color.WHITE);
		btnBuscar.setBackground(color1);
		//btnBuscar.setBounds(10, 24,158, 38);
		panelAcciones.add(btnBuscar);
		
		btnCobrar = new BotonCobrar();
		btnCobrar.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnCobrar.setForeground(Color.WHITE);
		btnCobrar.setBackground(color2);
		btnCobrar.setText("F2 Cobrar");
		//btnCobrar.setBounds(10, 86, 158, 38);
		
		panelAcciones.add(btnCobrar);
		//btnBuscar.getInputMap().put(KeyStroke.getKeyStroke("F1"), sumar());
		
		btnCliente = new BotonBuscarClientes();
		btnCliente.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnCliente.setForeground(Color.WHITE);
		btnCliente.setBackground(color1);
		btnCliente.setText("F3 Clientes");
		panelAcciones.add(btnCliente);
		
		btnGuardar = new BotonGuardar();
		btnGuardar.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnGuardar.setForeground(Color.WHITE);
		btnGuardar.setBackground(color2);
		btnGuardar.setText("F4 Guardar");
		//btnGuardar.setBounds(10, 210, 158, 38);
		panelAcciones.add(btnGuardar);
		
		btnPendientes = new JButton("F5 Pendientes");
		btnPendientes.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnPendientes.setForeground(Color.WHITE);
		btnPendientes.setBackground(color1);
		btnPendientes.setIcon(new ImageIcon(ViewFacturar.class.getResource("/view/recursos/pendientes_2.png")));
		btnPendientes.setVerticalTextPosition(SwingConstants.BOTTOM);
		btnPendientes.setHorizontalTextPosition(SwingConstants.CENTER);
		//btnPendientes.setBounds(10, 272, 158, 38);
		panelAcciones.add(btnPendientes);
		
		btnCierreCaja = new JButton("F6 Cierre");
		btnCierreCaja.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnCierreCaja.setForeground(Color.WHITE);
		btnCierreCaja.setBackground(color2);
		btnCierreCaja.setIcon(new ImageIcon(ViewFacturar.class.getResource("/view/recursos/cierre_caja_2.png")));
		btnCierreCaja.setVerticalTextPosition(SwingConstants.BOTTOM);
		btnCierreCaja.setHorizontalTextPosition(SwingConstants.CENTER);
		//btnCierreCaja.setBounds(10, 334, 158, 38);
		panelAcciones.add(btnCierreCaja);
		
		btnActualizar=new BotonActualizar();
		btnActualizar.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnActualizar.setForeground(Color.WHITE);
		btnActualizar.setVerticalTextPosition(SwingConstants.BOTTOM);
		btnActualizar.setBackground(color1);
		btnActualizar.setText("F7 Actualizar");
		//btnActualizar.setBounds(10, 210, 158, 38);
		//getContentPane().add(btnActualizar);
		panelAcciones.add(btnActualizar);
		btnActualizar.setVisible(false);
		
		btnCerrar = new BotonCancelar();
		btnCerrar.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnCerrar.setForeground(Color.WHITE);
		btnCerrar.setBackground(color2);
		btnCerrar.setText("Esc Cerrar");
		//btnCerrar.setBounds(10, 396, 158, 38);
		panelAcciones.add(btnCerrar);
		
		
		
		
		
		
		//getContentPane().setLayout(null);
		
		Font myFont=new Font("OCR A Extended", Font.PLAIN, 45);
		
		panel = new JPanel();
		panel.setBackground(color4);
		getContentPane().add(panel, BorderLayout.EAST);
		panel.setLayout(new GridLayout(10, 1, 0, 0));
		
		lblSubtotal = new JLabel("SubTotal");
		lblSubtotal.setHorizontalAlignment(SwingConstants.CENTER);
		panel.add(lblSubtotal);
		//lblTotal.setBounds(780, 490, 46, 14);
		
		
		
		
		txtSubtotal = new JTextField();
		panel.add(txtSubtotal);
		txtSubtotal.setFont(myFont);
		txtSubtotal.setHorizontalAlignment(SwingConstants.RIGHT);
		txtSubtotal.setText("00");
		
		txtSubtotal.setEditable(false);
		//txtSubtotal.setBounds(20, 506, 207, 44);
		txtSubtotal.setColumns(10);
		//lblSubtotal.setBounds(20, 490, 59, 14);
		
		JLabel lblDescuento = new JLabel("Descuento");
		lblDescuento.setHorizontalAlignment(SwingConstants.CENTER);
		panel.add(lblDescuento);
		
		txtDescuento = new JTextField();
		panel.add(txtDescuento);
		txtDescuento.setHorizontalAlignment(SwingConstants.RIGHT);
		txtDescuento.setEditable(false);
		txtDescuento.setText("00");
		txtDescuento.setFont(myFont);
		txtDescuento.setBounds(605, 506, 163, 44);
		txtDescuento.setColumns(10);
		//lblDescuento.setBounds(605, 490, 92, 14);
		
		lblImpuesto = new JLabel("Impuesto 15");
		lblImpuesto.setHorizontalAlignment(SwingConstants.CENTER);
		panel.add(lblImpuesto);
		
		txtImpuesto = new JTextField();
		panel.add(txtImpuesto);
		txtImpuesto.setHorizontalAlignment(SwingConstants.RIGHT);
		txtImpuesto.setFont(myFont);
		txtImpuesto.setText("00");
		txtImpuesto.setEditable(false);
		txtImpuesto.setBounds(237, 506, 177, 44);
		txtImpuesto.setColumns(10);
		//lblImpuesto.setBounds(237, 490, 92, 14);
		
		JLabel lblImpuesto_1 = new JLabel("Impuesto 18");
		lblImpuesto_1.setHorizontalAlignment(SwingConstants.CENTER);
		panel.add(lblImpuesto_1);
		
		txtImpuesto18 = new JTextField();
		panel.add(txtImpuesto18);
		txtImpuesto18.setText("00");
		txtImpuesto18.setHorizontalAlignment(SwingConstants.RIGHT);
		txtImpuesto18.setFont(myFont);
		txtImpuesto18.setEditable(false);
		txtImpuesto18.setBounds(424, 506, 171, 44);
		txtImpuesto18.setColumns(10);
		//lblImpuesto_1.setBounds(424, 490, 82, 14);
		
		lblTotal = new JLabel("Total");
		lblTotal.setHorizontalAlignment(SwingConstants.CENTER);
		panel.add(lblTotal);
		
		txtTotal = new JTextField();
		panel.add(txtTotal);
		txtTotal.setForeground(Color.RED);
		txtTotal.setHorizontalAlignment(SwingConstants.RIGHT);
		txtTotal.setFont(myFont);
		txtTotal.setText("00");
		txtTotal.setEditable(false);
		txtTotal.setBounds(778, 506, 220, 44);
		txtTotal.setColumns(10);
		
		
		//setSize(1024, 600);
		setSize(this.getToolkit().getScreenSize());
		//this.setPreferredSize(new Dimension(1024, 600));
		//this.setResizable(false);
		//centrar la ventana en la pantalla
		Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
		this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
		//this.pack();
		
	}
	public JComboBox getCbxEmpleados(){
		return cbxEmpleados;
	}
	public CbxTmEmpleado getModeloEmpleados(){
		return this.modeloEmpleado;
	}
	
	public JRadioButton getRdbtnContado(){
		return rdbtnContado;
	}
	public  JRadioButton getRdbtnCredito(){
		return  rdbtnCredito;
	}
	public BotonActualizar getBtnActualizar(){
		return btnActualizar;
	}
	public JTextField getTxtRtn(){
		return txtRtn;
	}
	public BotonGuardar getBtnGuardar(){
		return btnGuardar;
	}
	public JButton getBtnBuscar(){
		return btnBuscar;
	}
	public JButton getBtnBuscarCliente(){
		return btnCliente;
	}
	public JButton getBtnCobrar(){
		return btnCobrar;
	}
	public JButton getBtnCerrar(){
		return btnCerrar;
	}
	public JButton getBtnPendientes(){
		return this.btnPendientes;
	}
	public JPanel getPanelAcciones(){
		return panelAcciones;
	}
	public JTextField getTxtDescuento(){
		return txtDescuento;		
	}
	public JTextField getTxtSubtotal(){
		return txtSubtotal;
	}
	public JTextField getTxtImpuesto(){
		return txtImpuesto;
	}
	public JTextField getTxtImpuesto18(){
		return txtImpuesto18;
	}
	public JTextField getTxtTotal(){
		return txtTotal;
	}
	public JTextField getTxtNombrecliente(){
		return txtNombrecliente;
	}
	public JTextField getTxtIdcliente(){
		return txtIdcliente;
	}
	public TmDevoluciones getModeloTabla(){
		return modeloTabla;
	}
	public JTable getTableDetalle(){
		return tableDetalle;
	}
	public JTextField getTxtFechafactura(){
		return txtFechafactura;
	}
	public void conectarContralador(CtlDevoluciones c){
		
		txtIdcliente.addActionListener(c);
		txtIdcliente.setActionCommand("BUSCARCLIENTE");
		
		tableDetalle.addKeyListener(c);
		tableDetalle.addMouseListener(c);
		modeloTabla.addTableModelListener(c);
		//tableDetalle.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		tableDetalle.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
		tableDetalle.setColumnSelectionAllowed(true);
		tableDetalle.setRowSelectionAllowed(true);
		tableDetalle.setCellSelectionEnabled(true);
		
		txtIdcliente.addKeyListener(c);
		txtNombrecliente.addKeyListener(c);
		txtFechafactura.addKeyListener(c);
		
		btnCierreCaja.addKeyListener(c);
		btnCierreCaja.addActionListener(c);
		btnCierreCaja.setActionCommand("CIERRECAJA");
		
		
		btnPendientes.addKeyListener(c);
		btnPendientes.addActionListener(c);
		btnPendientes.setActionCommand("PENDIENTES");
		
		this.btnBuscar.addKeyListener(c);
		this.btnBuscar.addActionListener(c);
		this.btnBuscar.setActionCommand("BUSCARARTICULO");
		
		
		this.btnCerrar.addKeyListener(c);
		this.btnCerrar.addActionListener(c);
		this.btnCerrar.setActionCommand("CERRAR");
		
		this.btnCliente.addKeyListener(c);
		this.btnCliente.addActionListener(c);
		this.btnCliente.setActionCommand("BUSCARCLIENTES");
		
		this.btnCobrar.addKeyListener(c);
		this.btnCobrar.addActionListener(c);
		this.btnCobrar.setActionCommand("COBRAR");
		
		this.btnGuardar.addKeyListener(c);
		this.btnGuardar.addActionListener(c);
		this.btnGuardar.setActionCommand("GUARDAR");
		
		btnActualizar.addKeyListener(c);
		this.btnActualizar.addActionListener(c);
		this.btnActualizar.setActionCommand("ACTUALIZAR");
		
		this.rdbtnContado.addKeyListener(c);
		this.rdbtnCredito.addKeyListener(c);
		this.txtDescuento.addKeyListener(c);
		this.txtImpuesto.addKeyListener(c);
		this.txtSubtotal.addKeyListener(c);
		txtRtn.addKeyListener(c);
		this.txtTotal.addKeyListener(c);
		
		
	}

}
