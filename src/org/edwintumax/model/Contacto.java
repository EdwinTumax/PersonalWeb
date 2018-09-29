package org.edwintumax.model;
import java.io.Serializable;
public class Contacto implements Serializable {
	private Long idContacto;
	private String nombre;
	private String email;
	private String nivel;
	private String lenguajes;
	private String comentario;
	public Contacto() {
		// TODO Auto-generated constructor stub
	}
	public Contacto(Long idContacto, String nombre, String email, String nivel, String lenguajes, String comentario) {
		super();
		this.idContacto = idContacto;
		this.nombre = nombre;
		this.email = email;
		this.nivel = nivel;
		this.lenguajes = lenguajes;
		this.comentario = comentario;
	}
	public Long getIdContacto() {
		return idContacto;
	}
	public void setIdContacto(Long idContacto) {
		this.idContacto = idContacto;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNivel() {
		return nivel;
	}
	public void setNivel(String nivel) {
		this.nivel = nivel;
	}
	public String getLenguajes() {
		return lenguajes;
	}
	public void setLenguajes(String lenguajes) {
		this.lenguajes = lenguajes;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
}
