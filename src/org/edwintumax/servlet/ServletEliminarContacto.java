package org.edwintumax.servlet;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.edwintumax.db.Conexion;
import org.edwintumax.model.Contacto;

public class ServletEliminarContacto extends HttpServlet {
	public void doPost(HttpServletRequest peticion, HttpServletResponse respuesta) throws IOException, ServletException {
		RequestDispatcher despachador = null;
		try {
			String idContacto = peticion.getParameter("idContacto");
			PreparedStatement procedimiento = Conexion.getInstancia().getConexion().prepareStatement("call sp_EliminarContacto(?)");
			procedimiento.setInt(1,Integer.parseInt(idContacto));
			procedimiento.executeQuery();
			procedimiento = Conexion.getInstancia().
					getConexion().
					prepareStatement("CALL sp_ConsultarContacto()");
				ResultSet resultado = procedimiento.executeQuery();
				ArrayList<Contacto> lista = new ArrayList<Contacto>();
				while(resultado.next()) {
					lista.add(new Contacto(resultado.getLong("idContacto"),
							resultado.getString("nombre"),
							resultado.getString("email"),
							resultado.getString("nivel"),
							resultado.getString("lenguajes"),
							resultado.getString("comentario")));
				}		
				peticion.setAttribute("listaContactos",lista);
				despachador = peticion.getRequestDispatcher("contactos.jsp");
				despachador.forward(peticion,respuesta);	
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void doGet(HttpServletRequest peticion, HttpServletResponse respuesta) throws IOException, ServletException {
		doPost(peticion,respuesta);
	}
}
