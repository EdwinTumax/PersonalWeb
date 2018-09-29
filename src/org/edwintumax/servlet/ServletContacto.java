package org.edwintumax.servlet;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.edwintumax.db.Conexion;
public class ServletContacto extends HttpServlet {	
	public void doPost(HttpServletRequest peticion, HttpServletResponse respuesta) throws IOException, ServletException {
		RequestDispatcher despachador = null;
		respuesta.setContentType("application/json");
		respuesta.setCharacterEncoding("UTF8");
		try {
			String nombre = peticion.getParameter("nombre");
			System.out.println(nombre);
			String email = peticion.getParameter("email");
			String nivel = peticion.getParameter("developer");
			String lenguajes[] = peticion.
					getParameterValues("intereses");
			StringBuffer resultado = new StringBuffer();
			
			for(String len : lenguajes) {
				resultado.append(len+"/");
			}
			String comentario = peticion.getParameter("comentario");
			PreparedStatement procedimiento = Conexion.
					getInstancia().getConexion().
					prepareCall("call sp_RegistrarContacto(?,?,?,?,?)");
				procedimiento.setString(1,nombre);
				procedimiento.setString(2,email);
				procedimiento.setString(3,nivel);
				procedimiento.setString(4,resultado.toString());
				procedimiento.setString(5,comentario);
				procedimiento.executeQuery();
				//despachador = peticion.getRequestDispatcher("index.jsp");
				respuesta.getWriter().write("{mensaje:'Solicitud enviada'}");
		}catch(SQLException e) {
			e.printStackTrace();
			respuesta.getWriter().write("{mensaje:'Error al enviar la información'}");
		}
		//despachador.forward(peticion,respuesta);
		
	}
	public void doGet(HttpServletRequest peticion, HttpServletResponse respuesta) throws IOException, ServletException {
		doPost(peticion,respuesta);
	}
}
