package org.edwintumax.model;
import java.io.Serializable;
public class Usuario implements Serializable {
	private int idUsuario;
	private String username;
	private String email;
	private String password;
	public Usuario() {
		// TODO Auto-generated constructor stub
	}
	public Usuario(int idUsuario, String username, String email, String password) {
		super();
		this.idUsuario = idUsuario;
		this.username = username;
		this.email = email;
		this.password = password;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}	
}
