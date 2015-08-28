package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modelo.Conexion;

public class RequisicionDao {
	
	private Conexion conexion=null;
	private PreparedStatement getFecha=null;
	private PreparedStatement buscarArticulo=null;
	private PreparedStatement insertarNuevoMovimiento=null;

	public RequisicionDao(Conexion conn) {
		conexion=conn;
	}
	
	/*<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Metodo para conseguir la fecha>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/
	public String getFechaSistema(){
		String fecha="";
		//DataSource ds=DBCPDataSourceFactory.getDataSource("mysql");
		Connection conn=null;
		ResultSet res=null;
		//Statement instrucions=null;
		try {
			conn=conexion.getPoolConexion().getConnection();
			getFecha = conn.prepareStatement("SELECT DATE_FORMAT(now(), '%d/%m/%Y') as fecha;");
			
			//res=getFecha.executeQuery(" SELECT DATE_FORMAT(now(), '%d/%m/%Y %h:%i:%s %p') as fecha;");
			res=getFecha.executeQuery();
			while(res.next()){
				fecha=res.getString("fecha");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try{
				
				if(res != null) res.close();
	            if(getFecha != null)getFecha.close();
	            if(conn != null) conn.close();
	            
				
				} // fin de try
				catch ( SQLException excepcionSql )
				{
					excepcionSql.printStackTrace();
				} // fin de catch
		}
		
		
		return fecha;
	}

}
