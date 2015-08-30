package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modelo.Cliente;
import modelo.Conexion;
import modelo.ReciboPago;

public class ReciboPagoDao {
	
	private Conexion conexion;
	private PreparedStatement insertar=null;
	private PreparedStatement todas=null;
	private PreparedStatement buscar=null;
	private PreparedStatement actualizar=null;
	private PreparedStatement eliminar=null;
	private CuentaPorCobrarDao myCuentaCobrarDao=null;

	public ReciboPagoDao(Conexion conn) {
		conexion=conn;
		myCuentaCobrarDao=new CuentaPorCobrarDao(conexion);
	}
	
	/*<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Metodo para agreagar Articulo>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/
	public boolean registrar(ReciboPago myRecibo)
	{
		//JOptionPane.showConfirmDialog(null, myCliente);
		int resultado=0;
		ResultSet rs=null;
		Connection con = null;
		
		try 
		{
			con = conexion.getPoolConexion().getConnection();
			
			insertar=con.prepareStatement( "INSERT INTO recibo_pago(fecha,codigo_cliente,total_letras,total,concepto,usuario) VALUES (now(),?,?,?,?,?)");
			
			insertar.setInt(1, myRecibo.getCliente().getId());
			insertar.setString(2, myRecibo.getTotalLetras());
			insertar.setBigDecimal(3, myRecibo.getTotal());
			insertar.setString(4, myRecibo.getConcepto());
			insertar.setString(5, conexion.getUsuarioLogin().getUser());
						
			resultado=insertar.executeUpdate();
			
			rs=insertar.getGeneratedKeys(); //obtengo las ultimas llaves generadas
			while(rs.next()){
				//this.setIdClienteRegistrado(rs.getInt(1));
				myRecibo.setNoRecibo(rs.getInt(1));
			}
			
			//se establece en el concepto en numero de recibo con que se pago
			String concepto=myRecibo.getConcepto();
			concepto=concepto+" con recibo no. "+myRecibo.getNoRecibo();
			myRecibo.setConcepto(concepto);
			
			this.myCuentaCobrarDao.reguistrarDebito(myRecibo);
			
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			//conexion.desconectar();
            return false;
		}
		finally
		{
			try{
				if(rs!=null)rs.close();
				 if(insertar != null)insertar.close();
	              if(con != null) con.close();
			} // fin de try
			catch ( SQLException excepcionSql )
			{
				excepcionSql.printStackTrace();
				//conexion.desconectar();
			} // fin de catch
		} // fin de finally
	}

}
