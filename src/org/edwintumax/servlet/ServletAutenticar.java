package org.edwintumax.servlet;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.edwintumax.db.Conexion;
import org.edwintumax.model.Usuario;
public class ServletAutenticar extends HttpServlet {
	public void doPost(HttpServletRequest peticion, 
			HttpServletResponse respuesta) throws IOException, ServletException {		
		Usuario usuario = null;
		RequestDispatcher despachador = null;
		HttpSession sesion = peticion.getSession();
		String mensaje = "Revise sus credenciales";
		//respuesta.setContentType("application/json");
		//respuesta.setCharacterEncoding("utf-8");
		if(sesion != null) {
			sesion.invalidate();
		}
		try {
			PreparedStatement procedimiento = 
					Conexion.getInstancia().
					getConexion().
					prepareStatement("CALL sp_Autenticar(?,?)");
			procedimiento.setString(1,peticion.getParameter("txtEmail"));
			procedimiento.setString(2,peticion.getParameter("txtPassword"));
			ResultSet resultado = procedimiento.executeQuery();
			while(resultado.next()) {
				usuario = new Usuario(resultado.getInt("idUsuario"),
						resultado.getString("username"),
						resultado.getString("email"),
						resultado.getString("password"));
				sesion = peticion.getSession(true);		
				sesion.setAttribute("usuario",usuario);
				mensaje = "Bienvenido "+ usuario.getUsername();
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		respuesta.getWriter().print(mensaje);
		//despachador = peticion.getRequestDispatcher("index.jsp");
		//despachador.forward(peticion,respuesta);
	}
	public void doGet(HttpServletRequest peticion, 
			HttpServletResponse respuesta) throws IOException, ServletException {
		doPost(peticion,respuesta);
	}

}
