package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.math.BigDecimal;
import java.util.List;

import javax.swing.JOptionPane;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;

import view.ViewCxCPagos;
import view.ViewListaClientes;
import modelo.Cliente;
import modelo.Conexion;
import modelo.DetalleFactura;
import modelo.Factura;
import modelo.ReciboPago;
import modelo.dao.ClienteDao;
import modelo.dao.FacturaDao;

public class CtlFacturaPagos implements ActionListener, MouseListener, TableModelListener, WindowListener, KeyListener {
	private ViewCxCPagos view=null;
	private Conexion conexion=null;
	private Cliente myCliente=null;
	private ClienteDao clienteDao=null;
	private FacturaDao myFacturaDao=null;
	
	private ReciboPago myRecibo=null;
	

	public CtlFacturaPagos(ViewCxCPagos v,Conexion conn) {
		// TODO Auto-generated constructor stub
		view=v;
		conexion=conn;
		view.conectarContralador(this);
		clienteDao=new ClienteDao(conexion);
		myFacturaDao=new FacturaDao(conexion);
		myRecibo=new ReciboPago();
		view.setVisible(true);
	}

	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowOpened(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowClosing(WindowEvent e) {
		// TODO Auto-generated method stub
		this.view.setVisible(false);
	}

	@Override
	public void windowClosed(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowIconified(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowDeiconified(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowActivated(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowDeactivated(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void tableChanged(TableModelEvent e) {
		// TODO Auto-generated method stub

		// TODO Auto-generated method stub
		
		int colum=e.getColumn();
		int row=e.getFirstRow();
		//JOptionPane.showMessageDialog(view, myArticulo);
		//JOptionPane.showMessageDialog(view, "paso de celdas");
		switch(e.getType()){
		
		
		
			case TableModelEvent.UPDATE:
				
				//Se recoge el id de la fila marcada
		        int identificador=0; 
				
				
				//se agrego un descuento a la tabla
				if(colum==4){
					calcularTotales();
					//JOptionPane.showMessageDialog(view, "Modifico el Descuento "+this.view.getModeloTabla().getDetalle(row).getDescuentoItem().setScale(2, BigDecimal.ROUND_HALF_EVEN).doubleValue());
				}
				
				//view.getTxtBuscar().requestFocusInWindow();
			break;
		}
		
	
	}

	private void calcularTotales() {
		
		this.myRecibo.resetTotales();
		for(int x=0; x<this.view.getModeloTabla().getDetalles().size();x++){
			
			Factura detalle=this.view.getModeloTabla().getDetalle(x);
			
			if(detalle.getDeseaPagar()==true){
			
				//this.total.add(detalle.getTotal());
				myRecibo.setTotal(detalle.getTotal());
			
				//JOptionPane.showMessageDialog(view, "fecha:"+total);
					
			}		
					
				
				
			
		}//fin del for
		
		this.view.getTxtTotal().setText(""+myRecibo.getTotal().setScale(2, BigDecimal.ROUND_HALF_EVEN));
		
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		String comando=e.getActionCommand();
		//JOptionPane.showMessageDialog(view, "paso de celdas");
		switch(comando){
		case "BUSCARCLIENTE":
			myCliente=null;
			myCliente=clienteDao.buscarCliente(Integer.parseInt(this.view.getTxtIdcliente().getText()));
			
			if(myCliente!=null){
				this.view.getTxtNombrecliente().setText(myCliente.getNombre());
				view.getTxtLimiteCredito().setText("L. "+myCliente.getLimiteCredito());
				view.getTxtSaldo().setText("L. "+myCliente.getSaldoCuenta());
				cargarFacturasClientes(myFacturaDao.sinPagarCliente(myCliente));
			}else{
				this.view.getTxtIdcliente().setText("");
				this.view.getTxtNombrecliente().setText("");
				JOptionPane.showMessageDialog(view, "Cliente no encontrado");
			}
			
			break;
			
		case "BUSCARCLIENTES":
			this.buscarCliente();
			break;
			
		case "SELECTALL":
				view.getModeloTabla().cambiarEstado(view.getChckbxTodos().isSelected());
				calcularTotales();
				//JOptionPane.showMessageDialog(view, "Se cambio el cambio del todos" +view.getChckbxTodos().isSelected());
			break;
			
		case "COBRAR":
			 cobrar();
			break;
		
		}
		
		
	}
	
	private void cobrar() {
		//se verifica que hay facturas que cobrar
		if(view.getModeloTabla().getDetalles().size()>0 && view.getModeloTabla().hayPagos()==true){
			
		}else{
			
		}
		
	}

	private void buscarCliente(){
		//se crea la vista para buscar los cliente
		ViewListaClientes viewListaCliente=new ViewListaClientes (this.view);
		
		CtlClienteBuscar ctlBuscarCliente=new CtlClienteBuscar(viewListaCliente,conexion);
		
		myCliente=ctlBuscarCliente.buscarCliente(view);
		//se comprueba si le regreso un articulo valido
		if(myCliente.getNombre()!=null && myCliente.getId()!=-1){
			this.view.getTxtIdcliente().setText(""+myCliente.getId());;
			this.view.getTxtNombrecliente().setText(myCliente.getNombre());
			view.getTxtLimiteCredito().setText("L. "+myCliente.getLimiteCredito());
			view.getTxtSaldo().setText("L. "+myCliente.getSaldoCuenta());
			cargarFacturasClientes(myFacturaDao.sinPagarCliente(myCliente));
		
		}else{
			JOptionPane.showMessageDialog(view, "No se encontro el cliente");
			this.view.getTxtIdcliente().setText("1");;
			this.view.getTxtNombrecliente().setText("Cliente Normal");
		}
		viewListaCliente.dispose();
		ctlBuscarCliente=null;
	}

	private void cargarFacturasClientes(List<Factura> facturas) {
		// TODO Auto-generated method stub
		this.view.getModeloTabla().limpiarFacturas();
		
		if(facturas!=null){
			for(int c=0;c<facturas.size();c++){
				this.view.getModeloTabla().agregarFactura(facturas.get(c));
				
			}
		}
	}

}
