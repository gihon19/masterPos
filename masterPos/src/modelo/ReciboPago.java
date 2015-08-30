package modelo;

import java.math.BigDecimal;

public class ReciboPago {
	
	private BigDecimal total=new BigDecimal(0.0);
	private Cliente myCliente=null;
	private String concepto="";
	private String totalLetras="";
	private String fecha; 
	private int noRecibo=0;
	

	public ReciboPago() {
		// TODO Auto-generated constructor stub
		myCliente=new Cliente();
	}
	public void setNoRecibo(int n){
		noRecibo=n;
	}
	public int getNoRecibo(){
		return noRecibo;
	}
	public void setFecha(String f){
		fecha=f;
	}
	public String getFecha(){
		return fecha;
	}
	public void setTotalLetras(String t){
		totalLetras=t;
	}
	public String getTotalLetras(){
		return totalLetras;
	}
	public void setConcepto(String c){
		concepto=c;
	}
	public String getConcepto(){
		return concepto;
	}
	public void setCliente(Cliente c){
		myCliente=c;
	}
	public Cliente getCliente(){
		return myCliente;
	}
	
	public void setTotal(BigDecimal t){
		total=total.add(t);
	}
	public BigDecimal getTotal(){
		return total;
	}
	
	public void resetTotales(){
		
		total=BigDecimal.ZERO;
	}

}
