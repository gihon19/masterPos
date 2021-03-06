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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.swing.JOptionPane;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;

import modelo.AbstractJasperReports;
import modelo.Articulo;
import modelo.CierreCaja;
import modelo.Cliente;
import modelo.Conexion;
import modelo.DetalleFactura;
import modelo.Factura;
import modelo.dao.ArticuloDao;
import modelo.dao.CierreCajaDao;
import modelo.dao.ClienteDao;
import modelo.dao.EmpleadoDao;
import modelo.dao.FacturaDao;
import modelo.dao.PrecioArticuloDao;
import view.ViewCambio;
import view.ViewCambioPago;
import view.ViewCambioPagoTouch;
import view.ViewCargarVenderor;
import view.ViewCobro;
import view.ViewCuentaEfectivo;
import view.ViewFacturarTouch;
import view.ViewListaArticulo;
import view.ViewListaClientes;
import view.ViewListaFactura;
import view.ViewSalidaCaja;
import view.botones.BotonArticulo;

public class CtlFacturarTouch implements ActionListener, MouseListener, TableModelListener, WindowListener, KeyListener {


	
	private ViewFacturarTouch view;
	private Factura myFactura=null;
	private FacturaDao facturaDao=null;//=new FacturaDao();
	private ClienteDao clienteDao=null;//=new ClienteDao();
	private Articulo myArticulo=null;
	private ArticuloDao myArticuloDao=null;
	private EmpleadoDao myEmpleadoDao=null;
	private PrecioArticuloDao preciosDao=null;
	private Cliente myCliente=null;
	private Conexion conexion=null;
	private int filaPulsada=0;
	private boolean resultado=false;
	
	private int tipoView=1;
	private int netBuscar=0;
	private CierreCajaDao cierreDao;
	private static final Pattern numberPattern=Pattern.compile("-?\\d+");
	
	private CierreCaja myCierre;
	private List<BotonArticulo> botonesComida=new ArrayList<BotonArticulo>();
	private List<BotonArticulo> botonesBebida=new ArrayList<BotonArticulo>();
	private List<Articulo> articulosComida;
	private List<Articulo> articulosBebida;
	private Integer pagBotonComida=1;
	
	private Integer pagBotonBebida=1;
	private double totalPaginasBebidas;
	private double totalPaginasComida;
	
	public CtlFacturarTouch(ViewFacturarTouch v,Conexion conn){
		view=v;
		view.conectarContralador(this);
		conexion=conn;	
		//se inicializan atributos de la factura
		myFactura=new Factura();
		myCierre=new CierreCaja();
		myArticuloDao=new ArticuloDao(conexion);
		clienteDao=new ClienteDao(conexion);
		facturaDao=new FacturaDao(conexion);
		myEmpleadoDao=new EmpleadoDao(conexion);
		preciosDao=new PrecioArticuloDao(conexion);
		cierreDao=new CierreCajaDao(conexion);
		this.setEmptyView();
		
		//se estable el cierre de caja 
		this.setCierre();
		
		articulosComida=myArticuloDao.buscarArticuloMarca("COMIDA");
		articulosBebida=myArticuloDao.buscarArticuloMarca("BEBIDAS");
		//myArticuloDao.buscarArticuloMarca(busqueda)
		crearBotonesBebidas();
		crearBotonesComida();
		viewBoton();
	
		
	}
	public void viewBoton(){
		
		
		
		if(view.getTglbtnComida().isSelected())
			for(int c=0;c<botonesComida.size();c++){
				
				if((c>=(pagBotonComida*24-24)) && (c<(pagBotonComida*24))){
					
					view.getJpBtnsArticulos().add(botonesComida.get(c));
				}
			}
		
		if(view.getTglbtnBebida().isSelected())
			for(int c=0;c<botonesBebida.size();c++){
				
				if((c>=(pagBotonBebida*24-24)) && (c<(pagBotonBebida*24))){
					
					view.getJpBtnsArticulos().add(botonesBebida.get(c));
				}
			}
	}
	
	
	private void crearBotonesBebidas(){
		
		/*se comprueba que la tabla de los botones este completa
		 * si no es asi se completa con articulos nulos para poder tener una tabla llena permanente para efecto de view
		 */
		int residuo=articulosBebida.size()%24;
		
		if(residuo!=0){
			for(int x=0;x<(24-residuo);x++){
				Articulo uno= new Articulo();
				articulosBebida.add(uno);
			}
		}
		totalPaginasBebidas = (double)articulosBebida.size() /(double) 24; 
		
		if(articulosBebida!=null){
			for(int c=0;c<articulosBebida.size();c++){
				//this.view.getModelo().agregarArticulo(articulos.get(c));
					BotonArticulo uno=new BotonArticulo(articulosBebida.get(c).getArticulo());
					
					//si es articulo es nulo en caso -1 se crea un comando nulo para identificarlo
					if(articulosBebida.get(c).getId()!=-1)
						uno.setActionCommand(""+articulosBebida.get(c).getId());
					else{
						uno.setActionCommand("Nulo");
						uno.setEnabled(false);
					}
					
					
					uno.addActionListener(this);
					this.botonesBebida.add(uno);
			}
		}
		
	}
	private void crearBotonesComida(){
		/*se comprueba que la tabla de los botones este completa
		 * si no es asi se completa con articulos nulos para poder tener una tabla llena permanente para efecto de view
		 */
		int residuo=articulosComida.size()%24;
		
		if(residuo!=0){
			for(int x=0;x<(24-residuo);x++){
				Articulo uno= new Articulo();
				articulosComida.add(uno);
			}
		}
		
		totalPaginasComida = (double)articulosComida.size() /(double) 24;
			if(articulosComida!=null){
				for(int c=0;c<articulosComida.size();c++){
					//this.view.getModelo().agregarArticulo(articulos.get(c));
						BotonArticulo uno=new BotonArticulo(articulosComida.get(c).getArticulo());
						
						//si es articulo es nulo en caso -1 se crea un comando nulo para identificarlo
						if(articulosComida.get(c).getId()!=-1)
							uno.setActionCommand(""+articulosComida.get(c).getId());
						else{
							uno.setActionCommand("Nulo");
							uno.setEnabled(false);
						}
						
						uno.addActionListener(this);
						this.botonesComida.add(uno);
				}
			}
		
	}
	private static boolean isNumber(String string){
		return string !=null && numberPattern.matcher(string).matches();
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
		filaPulsada = this.view.getTableDetalle().getSelectedRow();
		String comando=e.getActionCommand();
		//JOptionPane.showMessageDialog(view, comando);
		
		Integer codArticulo;
		
		if(this.isNumber(comando)){
			//agregar el articulo a las lista
			this.view.getModeloTabla().setArticulo(this.myArticuloDao.buscarArticuloId(Integer.parseInt(comando)));
			//this.view.getModelo().getDetalle(row).setCantidad(1);
			
			//calcularTotal(this.view.getModeloTabla().getDetalle(row));
			calcularTotales();
			this.view.getModeloTabla().agregarDetalle();
			selectRowInset();
		}else
		
		
		switch(comando){
		
		case "BUSCARCLIENTE":
			myCliente=null;
			myCliente=clienteDao.buscarCliente(Integer.parseInt(this.view.getTxtIdcliente().getText()));
			
			if(myCliente!=null){
				this.view.getTxtNombrecliente().setText(myCliente.getNombre());
			}else{
				this.view.getTxtIdcliente().setText("");
				this.view.getTxtNombrecliente().setText("");
				JOptionPane.showMessageDialog(view, "Cliente no encontrado");
			}
			
			break;
		case "ACTUALIZAR":
			this.actualizar();
			break;
		case "BUSCARARTICULO":
			this.buscarArticulo();
		break;
		
		case "CERRAR":
			this.salir();
		break;
		case "BUSCARCLIENTES":
			this.buscarCliente();
			break;
		case "COBRAR":
			this.cobrar();
			break;
		case "GUARDAR":
			this.guardar();
			break;
			
		case "CIERRECAJA":
			this.cierreCaja();
			break;
		case "PENDIENTES":
			this.showPendientes();
			break;
		case "SIGUIENTE":
			view.getJpBtnsArticulos().setVisible(false);
			view.getJpBtnsArticulos().removeAll();
			
			if(view.getTglbtnBebida().isSelected()){
				
				if(pagBotonBebida<this.totalPaginasBebidas)
					this.pagBotonBebida++;
				
			}
			
			if(view.getTglbtnComida().isSelected()){
				
				if(this.pagBotonComida<this.totalPaginasComida)
					this.pagBotonComida++;
			}
			
			this.viewBoton();
			view.getJpBtnsArticulos().setVisible(true);
			break;
		case "ATRAS":
			view.getJpBtnsArticulos().setVisible(false);
			view.getJpBtnsArticulos().removeAll();
			if(view.getTglbtnBebida().isSelected()){
				
				this.pagBotonBebida--;
				if(pagBotonBebida<=0){
					pagBotonBebida=1;
				}
			}
			
			if(view.getTglbtnComida().isSelected()){
				this.pagBotonComida--;
				if(pagBotonComida<=0){
					pagBotonComida=1;
				}
			}
			this.viewBoton();
			view.getJpBtnsArticulos().setVisible(true);
			break;
		
		case "BEBIDAS":
			
			view.getJpBtnsArticulos().setVisible(false);
			view.getJpBtnsArticulos().removeAll();
			this.viewBoton();
			view.getJpBtnsArticulos().setVisible(true);
			break;
		case "COMIDAS":
			view.getJpBtnsArticulos().setVisible(false);
			view.getJpBtnsArticulos().removeAll();
			this.viewBoton();
			view.getJpBtnsArticulos().setVisible(true);
			break;
			
		case "ELIMINAR":
			if(filaPulsada>=0){
				 this.view.getModeloTabla().eliminarDetalle(filaPulsada);
				 this.calcularTotales();
			 }
			break;
		case "MAS":
			if(filaPulsada>=0){
				//JOptionPane.showMessageDialog(view,e.getKeyChar()+" FIla:"+filaPulsada);
				this.view.getModeloTabla().masCantidad(filaPulsada);
				//JOptionPane.showMessageDialog(view,view.getModeloTabla().getDetalle(filaPulsada).getCantidad());
				this.calcularTotales();
			}
			break;
		case "MENOS":
			if(filaPulsada>=0){
				//JOptionPane.showMessageDialog(view,e.getKeyChar()+" FIla:"+filaPulsada);
				this.view.getModeloTabla().restarCantidad(filaPulsada);
				//JOptionPane.showMessageDialog(view,view.getModeloTabla().getDetalle(filaPulsada).getCantidad());
				this.calcularTotales();
			}
			break;
		
		}
		
	}
	


	private void setFactura(){
		
		//sino se ingreso un cliente en particular que coge el cliente por defecto
		if(myCliente==null){
			myCliente=new Cliente();
			myCliente.setId(Integer.parseInt(this.view.getTxtIdcliente().getText()));
			myCliente.setNombre(this.view.getTxtNombrecliente().getText());
			myCliente.setRtn(view.getTxtRtn().getText());
			
		}
		
		if(this.view.getRdbtnContado().isSelected()){
			myFactura.setTipoFactura(1);
			myFactura.setEstadoPago(1);
		}
		
		if(this.view.getRdbtnCredito().isSelected()){
			myFactura.setTipoFactura(2);
			myFactura.setEstadoPago(0);
		}
		
		myFactura.setCliente(myCliente);
		myFactura.setDetalles(this.view.getModeloTabla().getDetalles());
		myFactura.setFecha(facturaDao.getFechaSistema());
		
		/*
		//Se establece el vendedor seleccionado
		Empleado emp= (Empleado) this.view .getCbxEmpleados().getSelectedItem();
		myFactura.setVendedor(emp);
		//myArticulo.setImpuestoObj(imp);
		//JOptionPane.showMessageDialog(view, myCliente);*/
		
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
	public void tableChanged(TableModelEvent e) {
		// TODO Auto-generated method stub
		
		int colum=e.getColumn();
		int row=e.getFirstRow();
		//JOptionPane.showMessageDialog(view, myArticulo);
		//JOptionPane.showMessageDialog(view, "paso de celdas");
		switch(e.getType()){
		
		
		
			case TableModelEvent.UPDATE:
				
				//Se recoge el id de la fila marcada
		        int identificador=0; 
				
				//se ingreso un id o codigo de barra en la tabla
				if(colum==0){
					identificador=(int)this.view.getModeloTabla().getValueAt(row, 0);
			        myArticulo=this.view.getModeloTabla().getDetalle(row).getArticulo();
			        
					
			        //se ingreso un codigo de barra y si el articulo en la bd 
			        if(myArticulo.getId()==-2){
						String cod=this.view.getModeloTabla().getDetalle(row).getArticulo().getCodBarra().get(0).getCodigoBarra();
						this.myArticulo=this.myArticuloDao.buscarArticuloBarraCod(cod);
						
					}else{//sino se ingreso un codigo de barra se busca por id de articulo
						this.myArticulo=this.myArticuloDao.buscarArticulo(identificador);
					}
					
					//si se encuentra  el articulo por codigo de barra o por id se calcula los totales y se agrega 
					if(myArticulo!=null){
						
						//se estable en articulo en la tabla
						this.view.getModeloTabla().setArticulo(myArticulo, row);
						//se calcula los totales
						calcularTotales();
						
						
						boolean toggle = false;
					    boolean extend = false;
					    this.view.getTableDetalle().changeSelection(row, 0, toggle, extend);
					    this.view.getTableDetalle().changeSelection(row, colum, toggle, extend);
					    this.view.getTableDetalle().addColumnSelectionInterval(3, 3);
					    
					    
					    
						//se agrega otra fila en la tabla
						//this.view.getModeloTabla().agregarDetalle();
						
					}else{//si no se encuentra
						
						JOptionPane.showMessageDialog(view, "No se encuentra el articulo");
						//sino se encuentra se estable un id de -1 para que sea eliminado el articulo en la tabla
						this.view.getModeloTabla().getDetalle(row).getArticulo().setId(-1);
						
						//se agrega la nueva fila de la tabla
						this.view.getModeloTabla().agregarDetalle();
						
						// se vuelve a calcular los totales
						calcularTotales();
					}
					
					
					
					
					
				}
				
				//se cambia la cantidad en la tabla
				if(colum==3){
					
					calcularTotales();
		
				}
				
				//se agrego un descuento a la tabla
				if(colum==6){
					calcularTotales();
					//JOptionPane.showMessageDialog(view, "Modifico el Descuento "+this.view.getModeloTabla().getDetalle(row).getDescuentoItem().setScale(2, BigDecimal.ROUND_HALF_EVEN).doubleValue());
				}
				
				//view.getTxtBuscar().requestFocusInWindow();
			break;
		}
		
	}
	
	public boolean esValido(Character caracter)
    {
        char c = caracter.charValue();
        if ( !(Character.isLetter(c) //si es letra
                || c == ' ' //o un espacio
                || c == 8 //o backspace
                || (Character.isDigit(c))
            ))
            return false;
        else
            return true;
    }
	
	
public void calcularTotales(){
	
	//se establecen los totales en cero
	this.myFactura.resetTotales();
	
	for(int x=0; x<this.view.getModeloTabla().getDetalles().size();x++){
		
		DetalleFactura detalle=this.view.getModeloTabla().getDetalle(x);
		
		
		if(detalle.getArticulo().getId()!=-1)
			if(detalle.getCantidad().doubleValue()!=0 && detalle.getArticulo().getPrecioVenta()!=0){
				
				
				
				//se obtien la cantidad y el precio de compra por unidad
				BigDecimal cantidad=detalle.getCantidad();
				BigDecimal precioVenta= new BigDecimal(detalle.getArticulo().getPrecioVenta());
				
				//se calcula el total del item
				BigDecimal totalItem=cantidad.multiply(precioVenta);
				
				int desc=detalle.getDescuento();
			
				if(desc==1)
				{
					BigDecimal des=totalItem.multiply(new BigDecimal(0.05));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);
					
				}else if(desc==2){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.10));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==3){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.15));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==4){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.20));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==5){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.25));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==6){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.30));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==7){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.35));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==8){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.40));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==9){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.45));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}else if(desc==10){
					BigDecimal des=totalItem.multiply(new BigDecimal(0.50));
					detalle.setDescuentoItem(des);
					totalItem=totalItem.subtract(des);	
				}
				
				
				
				//se obtiene el impuesto del articulo 
				BigDecimal porcentaImpuesto =new BigDecimal(detalle.getArticulo().getImpuestoObj().getPorcentaje());
				BigDecimal porImpuesto=new BigDecimal(0);
				porImpuesto=porcentaImpuesto.divide(new BigDecimal(100));
				porImpuesto=porImpuesto.add(new BigDecimal(1));
						//new BigDecimal(((Double.parseDouble(detalle.getArticulo().getImpuestoObj().getPorcentaje())  )/100)+1);
				
				
				
				//se calcula el total sin  el impuesto;
				BigDecimal totalsiniva= new BigDecimal("0.0");
				totalsiniva=totalItem.divide(porImpuesto,2,BigDecimal.ROUND_HALF_EVEN);//.divide(porImpuesto);// (totalItem)/(porcentaImpuesto);
			
				
				//se calcula el total de impuesto del item
				BigDecimal impuestoItem=totalItem.subtract(totalsiniva);//-totalsiniva;
				
				
				
				//se estable el total y impuesto en el modelo
				myFactura.setTotal(totalItem);
				if(porcentaImpuesto.intValue()==0){
					myFactura.setSubTotalExcento(totalsiniva.setScale(2, BigDecimal.ROUND_HALF_EVEN));
				}else
					if(porcentaImpuesto.intValue()==15){
						myFactura.setTotalImpuesto(impuestoItem.setScale(2, BigDecimal.ROUND_HALF_EVEN));
						myFactura.setSubTotal15(totalsiniva.setScale(2, BigDecimal.ROUND_HALF_EVEN));
					}else
						if(porcentaImpuesto.intValue()==18){
							myFactura.setTotalImpuesto18(impuestoItem.setScale(2, BigDecimal.ROUND_HALF_EVEN));
							myFactura.setSubTotal18(totalsiniva.setScale(2, BigDecimal.ROUND_HALF_EVEN));
						}
				
				//se calcuala el total del impuesto de los articulo que son servicios de turismo
				if(detalle.getArticulo().getTipoArticulo()==3){
					BigDecimal totalOtrosImp= new BigDecimal("0.0");
					
					totalOtrosImp=totalsiniva.multiply(new BigDecimal(0.04));
					
					myFactura.setTotalOtrosImpuesto(totalOtrosImp.setScale(2, BigDecimal.ROUND_HALF_EVEN));
					myFactura.setTotal(totalOtrosImp.setScale(2, BigDecimal.ROUND_HALF_EVEN));
					
				}
				
				myFactura.setSubTotal(totalsiniva.setScale(2, BigDecimal.ROUND_HALF_EVEN));
				//myFactura.getDetalles().add(detalle);
				myFactura.setTotalDescuento(detalle.getDescuentoItem());
				
				detalle.setSubTotal(totalsiniva.setScale(2, BigDecimal.ROUND_HALF_EVEN));
				detalle.setImpuesto(impuestoItem.setScale(2, BigDecimal.ROUND_HALF_EVEN));
				//myFactura.getDetalles()
				
				//se establece en la y el impuesto en el item de la vista
				//detalle.setImpuesto(impuesto2.setScale(2, BigDecimal.ROUND_HALF_EVEN));
				detalle.setTotal(totalItem.setScale(2, BigDecimal.ROUND_HALF_EVEN));
				
				//se establece el total e impuesto en el vista
				this.view.getTxtTotal().setText(""+myFactura.getTotal().setScale(2, BigDecimal.ROUND_HALF_EVEN));
				this.view.getTxtImpuesto().setText(""+myFactura.getTotalImpuesto().setScale(2, BigDecimal.ROUND_HALF_EVEN));
				this.view.getTxtImpuesto18().setText(""+myFactura.getTotalImpuesto18().setScale(2, BigDecimal.ROUND_HALF_EVEN));
				this.view.getTxtSubtotal().setText(""+myFactura.getSubTotal().setScale(2, BigDecimal.ROUND_HALF_EVEN));
				this.view.getTxtDescuento().setText(""+myFactura.getTotalDescuento().setScale(2, BigDecimal.ROUND_HALF_EVEN));
				
				view.getModeloTabla().fireTableDataChanged();
				this.selectRowInset();
				
				
			
				
				//this.view.getModelo().fireTableDataChanged();
			}//fin del if
		
	}//fin del for
	}
	
public void calcularTotal(DetalleFactura detalle){
		
		if(detalle.getCantidad().doubleValue()!=0 && detalle.getArticulo().getPrecioVenta()!=0){
			
			//se obtien la cantidad y el precio de compra por unidad
			BigDecimal cantidad=detalle.getCantidad();
			BigDecimal precioVenta= new BigDecimal(detalle.getArticulo().getPrecioVenta());
			
			
			
			//se obtiene el impuesto del articulo 
			BigDecimal porcentaImpuesto =new BigDecimal(detalle.getArticulo().getImpuestoObj().getPorcentaje());
			BigDecimal porImpuesto=new BigDecimal(0);
			porImpuesto=porcentaImpuesto.divide(new BigDecimal(100));
			porImpuesto=porImpuesto.add(new BigDecimal(1));
					//new BigDecimal(((Double.parseDouble(detalle.getArticulo().getImpuestoObj().getPorcentaje())  )/100)+1);
			
			//se calcula el total del item
			BigDecimal totalItem=cantidad.multiply(precioVenta);
			
			//se calcula el total sin  el impuesto;
			BigDecimal totalsiniva= new BigDecimal("0.0");
			totalsiniva=totalItem.divide(porImpuesto,2,BigDecimal.ROUND_HALF_EVEN);//.divide(porImpuesto);// (totalItem)/(porcentaImpuesto);
		
			
			//se calcula el total de impuesto del item
			BigDecimal impuestoItem=totalItem.subtract(totalsiniva);//-totalsiniva;
			
			
			
			//se estable el total y impuesto en el modelo
			myFactura.setTotal(totalItem);
			myFactura.setTotalImpuesto(impuestoItem);
			myFactura.setSubTotal(totalsiniva);
			//myFactura.getDetalles().add(detalle);
			
			detalle.setSubTotal(totalsiniva.setScale(2, BigDecimal.ROUND_HALF_EVEN));
			detalle.setImpuesto(impuestoItem.setScale(2, BigDecimal.ROUND_HALF_EVEN));
			//myFactura.getDetalles()
			
			//se establece en la y el impuesto en el item de la vista
			//detalle.setImpuesto(impuesto2.setScale(2, BigDecimal.ROUND_HALF_EVEN));
			detalle.setTotal(totalItem.setScale(2, BigDecimal.ROUND_HALF_EVEN));
			
			//se establece el total e impuesto en el vista
			this.view.getTxtTotal().setText(""+myFactura.getTotal().setScale(2, BigDecimal.ROUND_HALF_EVEN));
			this.view.getTxtImpuesto().setText(""+myFactura.getTotalImpuesto().setScale(2, BigDecimal.ROUND_HALF_EVEN));
			this.view.getTxtSubtotal().setText(""+myFactura.getSubTotal().setScale(2, BigDecimal.ROUND_HALF_EVEN));
			
			
			
			
		
			
			//this.view.getModelo().fireTableDataChanged();
		}
	}

	

	

	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub
		
		
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub
		
		/*if(e.getComponent()==this.view.getTxtBuscar()){
			//JOptionPane.showMessageDialog(view, "2");
			JOptionPane.showMessageDialog(view, view.getTxtBuscar().getText());
			this.myArticulo=this.myArticuloDao.buscarArticuloNombre(view.getTxtBuscar().getText());
			
			JOptionPane.showMessageDialog(view, myArticulo);
			if(myArticulo!=null){
				view.getTxtArticulo().setText(myArticulo.getArticulo());
				view.getTxtPrecio().setText("L. "+myArticulo.getPrecioVenta());
				
			}
		}*/
		
		//Recoger qu� fila se ha pulsadao en la tabla
		filaPulsada = this.view.getTableDetalle().getSelectedRow();
		
		
		switch(e.getKeyCode()){
		
		case KeyEvent.VK_F1:
			buscarArticulo();
			break;
			
		case KeyEvent.VK_F2:
			cobrar();
			break;
			
		case KeyEvent.VK_F3:
				buscarCliente();
			break;
			
		case KeyEvent.VK_F4:
			guardar();
			break;
			
		case KeyEvent.VK_F5:
			showPendientes();
			break;
			
		case KeyEvent.VK_F6:
			cierreCaja();
			break;
			
		case KeyEvent.VK_F7:
			cierreCaja();
			break;
			
		case KeyEvent.VK_F8:
			
			break;
		case KeyEvent.VK_F9:
			
			break;
			
		case KeyEvent.VK_F10:
			ViewCobro viewCobro=new ViewCobro(view);
			CtlCobro ctlCobro=new CtlCobro(viewCobro,conexion);
			
			break;
			
		case KeyEvent.VK_F11:
			
			break;
			
		case KeyEvent.VK_F12:
			ViewSalidaCaja viewSalida=new ViewSalidaCaja(view);
			CtlSalidaCaja ctlSalida=new CtlSalidaCaja(viewSalida,conexion);
			break;
			
		case  KeyEvent.VK_ESCAPE:
			salir();
		break;
		
		case KeyEvent.VK_DELETE:
			if(filaPulsada>=0){
				 this.view.getModeloTabla().eliminarDetalle(filaPulsada);
				 this.calcularTotales();
			 }
			break;
			
		case KeyEvent.VK_DOWN:
			this.netBuscar++;
			break;
		case KeyEvent.VK_UP:
			if(netBuscar>=1){
				this.netBuscar--;
			}
			break;
		case KeyEvent.VK_LEFT:
			if(filaPulsada>=0){
				 this.view.getModeloTabla().getDetalle(filaPulsada).getArticulo().netPrecio();
				 this.calcularTotales();
			 }
			break;
		case KeyEvent.VK_RIGHT:
			if(filaPulsada>=0){
				 this.view.getModeloTabla().getDetalle(filaPulsada).getArticulo().lastPrecio();
				 this.calcularTotales();
			 }
			break;
		}
		
		/*if(e.getKeyCode()==KeyEvent.VK_F1){
			buscarArticulo();
		}else
			if(e.getKeyCode()==KeyEvent.VK_F2){
				cobrar();
			}else
				if(e.getKeyCode()==KeyEvent.VK_F3){
					buscarCliente();
				}else
					if(e.getKeyCode()==KeyEvent.VK_F4){
						guardar();
					}else
						if(e.getKeyCode()==KeyEvent.VK_F5){
							showPendientes();
							
						}else
						if(e.getKeyCode()==KeyEvent.VK_ESCAPE){
							salir();
						}else
							if(e.getKeyCode()==KeyEvent.VK_DELETE){
								 
								 if(filaPulsada>=0){
									 this.view.getModeloTabla().eliminarDetalle(filaPulsada);
									 this.calcularTotales();
								 }
							}else
								if(e.getKeyCode()==KeyEvent.VK_F6){
									cierreCaja();
								}
								else
									if(e.getKeyCode()==KeyEvent.VK_F11){
										
									}else
										if(e.getKeyCode()==KeyEvent.VK_F7){
											actualizar();
										}else
											if(e.getKeyCode()==KeyEvent.VK_F12){
	
												ViewSalidaCaja viewSalida=new ViewSalidaCaja(view);
												CtlSalidaCaja ctlSalida=new CtlSalidaCaja(viewSalida,conexion);
												
											}else
												if(e.getKeyCode()==KeyEvent.VK_DOWN){
													
													this.netBuscar++;
													this.buscarMasOmenos(netBuscar);
												}else
													if(e.getKeyCode()==KeyEvent.VK_UP){
														if(netBuscar>=1){
															this.netBuscar--;
															this.buscarMasOmenos(netBuscar);
														}
														
													}else
														if(e.getKeyCode()==KeyEvent.VK_LEFT){
															if(filaPulsada>=0){
																 this.view.getModeloTabla().getDetalle(filaPulsada).getArticulo().netPrecio();
																 this.calcularTotales();
															 }
														}else
															if(e.getKeyCode()==KeyEvent.VK_RIGHT){
																if(filaPulsada>=0){
																	 this.view.getModeloTabla().getDetalle(filaPulsada).getArticulo().lastPrecio();
																	 this.calcularTotales();
																 }
															}*/
								 
							
								
	}
	private void showPendientes() {
		// TODO Auto-generated method stub
		ViewListaFactura vistaFacturars=new ViewListaFactura(this.view);
		CtlFacturaLista ctlFacturas=new CtlFacturaLista(vistaFacturars,conexion );
		vistaFacturars.dispose();
		ctlFacturas=null;
	}
	private void cierreCaja() {
		// TODO Auto-generated method stub
		
		// se verifica que hay facturas para crear un cierre
		if(cierreDao.verificarCierre()){
			
			ViewCuentaEfectivo viewContar=new ViewCuentaEfectivo(view);
			CtlContarEfectivo ctlContar=new CtlContarEfectivo(viewContar);
			
			if(ctlContar.getEstado())//verifica que se ordeno realizar el cierre
				if(cierreDao.actualizarCierre(ctlContar.getTotal()))
				{
					try {
						//AbstractJasperReports.createReportFactura( conexion.getPoolConexion().getConnection(), "Cierre_Caja_Saint_Paul.jasper",1 );
						AbstractJasperReports.createReport(conexion.getPoolConexion().getConnection(), 4, cierreDao.idUltimoRequistro);
						
						//AbstractJasperReports.Imprimir2();
						//JOptionPane.showMessageDialog(view, "Se realizo el corte correctamente.");

						AbstractJasperReports.imprimierFactura();
						AbstractJasperReports.showViewer(view);
						
						//this.view.setModal(false);
						//AbstractJasperReports.imprimierFactura();
						
						viewContar.dispose();
						viewContar=null;
						ctlContar=null;
						
						
						/*if(!cierre.registrarCierre()){
							JOptionPane.showMessageDialog(view, "No se guardo el cierre de corte. Vuelva a hacer el corte.");
						}else{
							AbstractJasperReports.Imprimir2();
							JOptionPane.showMessageDialog(view, "Se realizo el corte correctamente.");
						}*/
						
					} catch (SQLException ee) {
						// TODO Auto-generated catch block
						ee.printStackTrace();
					}
				}else{
					JOptionPane.showMessageDialog(view, "No se guardo el cierre de corte. Vuelva a hacer el corte.");
				}
		}//fin de la verificacion de las facturas 
		else{
			JOptionPane.showMessageDialog(view, "No hay facturas para crear un cierre de caja. Primero debe facturar.");
		}
	}
	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub
		
		//Recoger qu� fila se ha pulsadao en la tabla
		filaPulsada = this.view.getTableDetalle().getSelectedRow();
		char caracter = e.getKeyChar();
		
		if(e.getComponent()==this.view.getTxtNombrecliente()){
			view.getTxtIdcliente().setText("-1");
			
		}
		
		
		
		
		
		if(caracter=='+'){
			if(filaPulsada>=0){
				//JOptionPane.showMessageDialog(view,e.getKeyChar()+" FIla:"+filaPulsada);
				this.view.getModeloTabla().masCantidad(filaPulsada);
				//JOptionPane.showMessageDialog(view,view.getModeloTabla().getDetalle(filaPulsada).getCantidad());
				this.calcularTotales();
			}
		}
		if(caracter=='-'){
			if(filaPulsada>=0){
				//JOptionPane.showMessageDialog(view,e.getKeyChar()+" FIla:"+filaPulsada);
				this.view.getModeloTabla().restarCantidad(filaPulsada);
				//JOptionPane.showMessageDialog(view,view.getModeloTabla().getDetalle(filaPulsada).getCantidad());
				this.calcularTotales();
			}
		}
		
		
	}
	
	private void salir(){
		//facturaDao.desconectarBD();
		//this.clienteDao.desconectarBD();
		//this.myArticuloDao.desconectarBD();
		//this.myFactura.setIdFactura(-1);
		this.view.setVisible(false);
		
		
	}
	private void guardar(){
		
		setFactura();
		facturaDao.registrarFacturaTemp(myFactura);
		myFactura.setIdFactura(facturaDao.getIdFacturaGuardada());
		resultado=true;
		//this.view.setVisible(false);
		setEmptyView();
		
	}
	private void actualizar() {
		// TODO Auto-generated method stub
		setFactura();
		facturaDao.actualizarFacturaTemp(myFactura);
		this.view.setVisible(false);
		
	}
	private void cobrar(){
		
		
		//verificamos que se agregaron articulos a la factura
		if(view.getModeloTabla().getRowCount()>1){
			
			
			
			
			ViewCargarVenderor viewVendedor=new ViewCargarVenderor(view);
			CtlCargarVendedor ctlVendedor=new CtlCargarVendedor(viewVendedor,conexion);
			
			boolean resulVendedor=ctlVendedor.cargarVendedor();
			
			if(resulVendedor)//verifica si ingreso el codigo del bombero
			{
			
				//se agrega el vendedor a la factura
				myFactura.setVendedor(ctlVendedor.getVendetor());
				
				if(view.getRdbtnContado().isSelected()){
			
					//se muestra la vista para cobrar y introducir el cambio
					ViewCambioPagoTouch viewPago=new ViewCambioPagoTouch(this.view);
					CtlCambioPagoTouch ctlPago=new CtlCambioPagoTouch(viewPago,myFactura.getTotal());
					//se muestra y ventana del cobro y se devuelve un resultado del cobro
					boolean resulPago=ctlPago.pagar();
					
					//se procede a verificar si se cobro
					if(resulPago)
					{
						
						
						//si la forma de pago fue en efectivo
						if(ctlPago.getFormaPago()==1){
							myFactura.setPago(ctlPago.getEfectivo());
							myFactura.setCambio(ctlPago.getCambio());
							myFactura.setTipoPago(1);
						}
						//si la forma de pago fue con tarjeta de credito o debito
						if(ctlPago.getFormaPago()==2){
							myFactura.setPago(myFactura.getTotal());
							myFactura.setCambio(new BigDecimal(00));
							myFactura.setTipoPago(2);
							myFactura.setObservacion(ctlPago.getRefencia());
						}
						
						//se estable los datos de la factura
						setFactura();
						
						//se guarda la factura
						boolean resul=facturaDao.registrarFactura(myFactura);
							
						if(resul){
							
							myFactura.setIdFactura(facturaDao.getIdFacturaGuardada());
							
								try {
									/*this.view.setVisible(false);
									this.view.dispose();*/
									//AbstractJasperReports.createReportFactura( conexion.getPoolConexion().getConnection(), "Factura_Saint_Paul.jasper",myFactura.getIdFactura() );
									AbstractJasperReports.createReport(conexion.getPoolConexion().getConnection(), 1, myFactura.getIdFactura());
									AbstractJasperReports.showViewer(view);
									//AbstractJasperReports.exportToTXT();
									
									
									
									
									//AbstractJasperReports.imprimierFactura();
									//AbsqtractJasperReports.imprimierFactura();
									
									
									//muestra en la pantalla el cambio y lo mantiene permanente
									ViewCambio cambio=new ViewCambio(view);
									cambio.getTxtCambio().setText(myFactura.getCambio().toString());
									cambio.getTxtEfectivo().setText(myFactura.getPago().toString());
									cambio.setVisible(true);
									
									
									//myFactura=null;
									setEmptyView();
									
									//si la view es de actualizacion al cobrar se cierra la view
									if(this.tipoView==2){
										myFactura=null;
										view.setVisible(false);
									}
									//myFactura.
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							
							
						}else{
							JOptionPane.showMessageDialog(view, "No se guardo la factura", "Error Base de Datos", JOptionPane.ERROR_MESSAGE);
							this.view.setVisible(false);
							this.view.dispose();
						}//fin el if donde se guarda la factura
						
					}//fin de la ventana en cobro
				
				}else{//si la factura es al contado se procede a guardar e imprimir 
					
					
					//se estable los datos de la factura
					setFactura();
					
					myFactura.setTipoPago(3);
					//no se necesita el cambio porque es al credito
					myFactura.setPago(new BigDecimal(0));
					myFactura.setCambio(new BigDecimal(0));
					myFactura.setTipoFactura(2);
					
					BigDecimal saldo=this.myCliente.getSaldoCuenta();
					BigDecimal limite=this.myCliente.getLimiteCredito();
					BigDecimal nuevoSaldo=saldo.add(this.myFactura.getTotal());
					
					
					if(nuevoSaldo.doubleValue()>limite.doubleValue()){
						JOptionPane.showMessageDialog(view, "El Cliente no tiene suficiente credito.");
					}else{
					
					
					
								boolean resul=facturaDao.registrarFactura(myFactura);
								
								
								if(resul){
									myFactura.setIdFactura(facturaDao.getIdFacturaGuardada());
									
										try {
											/*this.view.setVisible(false);
											this.view.dispose();*/
											//AbstractJasperReports.createReportFactura( conexion.getPoolConexion().getConnection(), "Factura_Saint_Paul.jasper",myFactura.getIdFactura() );
											AbstractJasperReports.createReport(conexion.getPoolConexion().getConnection(), 1, myFactura.getIdFactura());
											
											AbstractJasperReports.imprimierFactura();
											AbstractJasperReports.showViewer(view);
											//AbstractJasperReports.imprimierFactura();
											//myFactura=null;
											setEmptyView();
											
											//si la view es de actualizacion al cobrar se cierra la view
											if(this.tipoView==2){
												myFactura=null;
												view.setVisible(false);
											}
											//myFactura.
										} catch (SQLException e) {
											// TODO Auto-generated catch block
											e.printStackTrace();
										}
									
									
								}else{
									JOptionPane.showMessageDialog(view, "No se guardo la factura", "Error Base de Datos", JOptionPane.ERROR_MESSAGE);
									this.view.setVisible(false);
									this.view.dispose();
								}//fin el if donde se guarda la factura
					}//fin del if donde se comprueba el limite de credito
				}//fin del factura al credito
				
				
				
			}//sin del if donde se pide el codigo del vendedor
				
					
		}//fin del if donde se verifica que hay articulos que facturar
		else{
			JOptionPane.showMessageDialog(view, "Para cobrar debe agregar articulos primero.");
		}
		
	}
	private void buscarArticulo(){
	
		//se llama el metodo que mostrar la ventana para buscar el articulo
		ViewListaArticulo viewListaArticulo=new ViewListaArticulo(view);
		CtlArticuloBuscar ctlArticulo=new CtlArticuloBuscar(viewListaArticulo,conexion);
		
		viewListaArticulo.pack();
		ctlArticulo.view.getTxtBuscar().setText("");
		ctlArticulo.view.getTxtBuscar().selectAll();
		//ctlArticulo.view.getTxtBuscar().requestFocus(true);
		//ctlArticulo.view.getTxtBuscar().selectAll();
		viewListaArticulo.conectarControladorBuscar(ctlArticulo);
		Articulo myArticulo1=ctlArticulo.buscarArticulo(view);
		
		//JOptionPane.showMessageDialog(view, myArticulo1);
		//se comprueba si le regreso un articulo valido
		if(myArticulo1!=null && myArticulo1.getId()!=-1){
			
			myArticulo1.setPreciosVenta(this.preciosDao.getPreciosArticulo(myArticulo1.getId()));
			this.view.getModeloTabla().setArticulo(myArticulo1);
			//this.view.getModelo().getDetalle(row).setCantidad(1);
			
			//calcularTotal(this.view.getModeloTabla().getDetalle(row));
			calcularTotales();
			this.view.getModeloTabla().agregarDetalle();
			
			selectRowInset();
		}
		
		myArticulo=null;
		viewListaArticulo.dispose();
		ctlArticulo=null;
		
	}
	private void setEmptyView(){
		//se estable la tabla de detalles vacia
		view.getModeloTabla().setEmptyDetalles();
		
		//se agrega una fila vacia a la tabla detalle
		view.getModeloTabla().agregarDetalle();
		
		
		//conseguir la fecha la facturaa
		view.getTxtFechafactura().setText(facturaDao.getFechaSistema());
		
		//se estable un cliente generico para la factura
		this.view.getTxtIdcliente().setText("1");;
		this.view.getTxtNombrecliente().setText("Consumidor final");
		//this.view.getTxtRtn().setText("");
		
		this.myCliente=null;
		
		
		this.view.getTxtDescuento().setText("");
		this.view.getTxtImpuesto().setText("0.00");
		this.view.getTxtImpuesto18().setText("0.00");
		this.view.getTxtSubtotal().setText("0.00");
		this.view.getTxtTotal().setText("0.00");
		this.myFactura.setObservacion("");
		
	}
	private void buscarCliente(){
		//se crea la vista para buscar los cliente
		ViewListaClientes viewListaCliente=new ViewListaClientes (this.view);
		
		CtlClienteBuscar ctlBuscarCliente=new CtlClienteBuscar(viewListaCliente,conexion);
		
		//myCliente=ctlBuscarCliente.buscarCliente(view);
		
		boolean resul=ctlBuscarCliente.buscarCliente(view);
	
		//se comprueba si le regreso un articulo valido
		if(resul){
			
			myCliente=ctlBuscarCliente.getCliente();
			this.view.getTxtIdcliente().setText(""+myCliente.getId());;
			this.view.getTxtNombrecliente().setText(myCliente.getNombre());
			this.view.getTxtRtn().setText(myCliente.getRtn());
		
		}else{
			//JOptionPane.showMessageDialog(view, "No se encontro el cliente");
			this.view.getTxtIdcliente().setText("1");;
			this.view.getTxtNombrecliente().setText("Consumidor final");
		
		}
		viewListaCliente.dispose();
		ctlBuscarCliente=null;
	}

	
	
	private void selectRowInset(){
		
		int row = this.view.getTableDetalle().getRowCount () - 2;
	    int col = 1;
	    boolean toggle = false;
	    boolean extend = false;
	    this.view.getTableDetalle().changeSelection(row, 0, toggle, extend);
	    this.view.getTableDetalle().changeSelection(row, col, toggle, extend);
	    this.view.getTableDetalle().addColumnSelectionInterval(0, 3);
		
		/*<<<<<<<<<<<<<<<selecionar la ultima fila creada>>>>>>>>>>>>>>>*/
		/*int row =  this.view.geTableDetalle().getRowCount () - 2;
		JOptionPane.showMessageDialog(view, row);
		/Rectangle rect = this.view.geTableDetalle().getCellRect(row, 0, true);
		this.view.geTableDetalle().scrollRectToVisible(rect);
		this.view.geTableDetalle().clearSelection();*/
		//this.view.geTableDetalle().setRowSelectionInterval(row, row);
		//view.geTableDetalle().setRowSelectionInterval(row, row);
		//view.geTableDetalle().clearSelection();
		//view.geTableDetalle().addRowSelectionInterval(row,row);
		//TablaModeloFactura modelo = (TablaModeloFactura)this.view.geTableDetalle().getModel();
		//modelo.fireTableDataChanged();
		//this.view.getModeloTabla().fireTableDataChanged();
	}

	@Override
	public void windowOpened(WindowEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void windowClosing(WindowEvent e) {
		// TODO Auto-generated method stub
		//facturaDao.desconectarBD();
		//this.clienteDao.desconectarBD();
		//this.myArticuloDao.desconectarBD();
		//this.myFactura.setIdFactura(-1);
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
	
	public void cargarFacturaView(){
		
		this.view.getTxtIdcliente().setText(""+myFactura.getCliente().getId());;
		this.view.getTxtNombrecliente().setText(myFactura.getCliente().getNombre());
		
		//se establece el total e impuesto en el vista
		this.view.getTxtTotal().setText(""+myFactura.getTotal().setScale(2, BigDecimal.ROUND_HALF_EVEN));
		this.view.getTxtImpuesto().setText(""+myFactura.getTotalImpuesto().setScale(2, BigDecimal.ROUND_HALF_EVEN));
		this.view.getTxtSubtotal().setText(""+myFactura.getSubTotal().setScale(2, BigDecimal.ROUND_HALF_EVEN));
		
		this.view.getModeloTabla().setDetalles(myFactura.getDetalles());
	}


	public Factura actualizarFactura(Factura f) {
		// TODO Auto-generated method stub
		this.myFactura=f;
		cargarFacturaView();
		this.view.getBtnGuardar().setEnabled(false);
		this.view.getBtnActualizar().setEnabled(true);
		this.view.getModeloTabla().agregarDetalle();
		tipoView=2;
		this.view.setVisible(true);
		
		//para controlar que es una actualizacion la que se hace
		
		
		return myFactura;
		
	}


	public boolean getAccion() {
		view.setVisible(true);
		return resultado;
	}


	public void viewFactura(Factura f) {
		// TODO Auto-generated method stub
		this.myFactura=f;
		cargarFacturaView();
		this.view.getPanelAcciones().setVisible(false);
		this.view.setVisible(true);
	}


	public Factura getFactura() {
		// TODO Auto-generated method stub
		return this.myFactura;
	}
	
	private void setCierre(){
		//seccion de cierre de caja
		
		//se consiguie el ultimo cierre del usuario
		myCierre=cierreDao.getCierreUltimoUser();
		
		
		if(myCierre.getEstado()==false){//si el ultimo cierre no esta inactivo se  registras el nuevo

			//String entrada=JOptionPane.showInputDialog(view, "Ingrese la cantidad de efectivo inicial de la caja");
			ViewCuentaEfectivo viewContar=new ViewCuentaEfectivo(view);
			CtlContarEfectivo ctlContar=new CtlContarEfectivo(viewContar);
			
			CierreCaja newCierre=new CierreCaja();
			
			/*if(entrada.trim().length()==0){
				entrada="0.00";
			}*/
			//newCierre.setEfectivoInicial(new BigDecimal(entrada));
			newCierre.setEfectivoInicial(ctlContar.getTotal());
			newCierre.setUsuario(conexion.getUsuarioLogin().getUser());
			newCierre.setNoFacturaInicio(myCierre.getNoFacturaFinal()+1);//se estable la factura incial sumandole uno a la ultima factura realizada por el usuario
			newCierre.setNoSalidaInicial(myCierre.getNoSalidaFinal()+1);//se estable la salida incial sumandole uno a la ultima salida realizada por el usuario
			newCierre.setNoCobroInicial(myCierre.getNoCobroFinal()+1);//se estable la cobro incial sumandole uno a la ultima cobro realizada por el usuario
			cierreDao.registrarCierre(newCierre);
			
			viewContar.dispose();
			viewContar=null;
			ctlContar=null;
		}
	}



}
