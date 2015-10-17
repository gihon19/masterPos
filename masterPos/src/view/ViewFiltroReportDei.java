package view;

import java.awt.Dimension;

import javax.swing.JPanel;

import com.toedter.calendar.JDateChooser;

import javax.swing.JLabel;
import javax.swing.JButton;

public class ViewFiltroReportDei extends  JPanel {
	
	JDateChooser dateFechaInicio;
	JDateChooser dateFechaFinal;
	JButton btnBuscar;

	public ViewFiltroReportDei() {
		
		JLabel lblFechaInicio = new JLabel("Fecha Inicio");
		add(lblFechaInicio);
		
		dateFechaInicio = new JDateChooser();
		dateFechaInicio.setDateFormatString("dd-MM-yyyy");
		add(dateFechaInicio);
		
		JLabel lblFechaFinal = new JLabel("Fecha Final");
		add(lblFechaFinal);
		
		dateFechaFinal = new JDateChooser();
		dateFechaFinal.setDateFormatString("dd-MM-yyyy");
		add(dateFechaFinal);
		
		btnBuscar = new JButton("Buscar");
		add(btnBuscar);
		
		this.setPreferredSize(new Dimension(194, 91));
		this.setSize(168, 91);
		// TODO Auto-generated constructor stub
	}

}
