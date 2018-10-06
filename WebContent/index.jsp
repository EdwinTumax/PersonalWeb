<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://personal.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<title>Mi sitio web</title>
<link href="css/estilo.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Allerta|Montserrat" rel="stylesheet">
</head>
    <body>
        <div class="portada">
            <header id="header" class="header contenedor">            
                <figure class="logotipo">            
                    <img src="imagenes/logo.png" width="97"  alt="Edwin Tumax">
                </figure>
                <nav class="menu">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="#skills">Skills</a></li>
                        <li><a href="#contacto">Contact</a></li>
                         <c:choose>
	                        <c:when test="${ not empty usuario }">
	                        	<li><a href="ServletListaContacto.do">Lista Contactos</a></li>
	                        </c:when>
                        </c:choose>
                        <li><a href="bibliography.jsp">Bibliography</a></li>
                    </ul>
                </nav>
            </header>        
            <section id="portada">
                <div class="contenedor">
                    <h1 class="titulo">Edwin Tumax</h1>
                    <h3 class="titulo-a">El trabajo bien hecho</h3>
                    <button class="button" data-toggle="modal" data-target="#form-login">Login</button>
                </div>
            </section>
        </div>
        <section id="skills" class="skills contenedor">
            <h2>Mis Skills</h2>
            <article class="skill">
                <img src="imagenes/java.png" width="350" alt="Java" class="right">
                <div class="contenedor-skill-a">
                    <h3 class="titulo-b">Desarrollo con Java</h3>       
                    <ol>
                        <li>JPA</li>
                        <li>JavaFX</li>
                        <li>JDBC</li>
                    </ol>        
                </div>
            </article>
            <article class="skill">
                <img src="imagenes/net.png" width="350" alt="-NET" class="left">
                <div class="contenedor-skill-b">
                    <h3 class="titulo-b">Desarrollo con .NET</h3>        
                    <ol>
                        <li>Entity Framework</li>
                        <li>LINQ</li>
                        <li>WPF</li>
                    </ol>
                </div>
            </article>
        </section>
        <footer class="footer">
            <div id="contacto" class="contenedor">
                <div class="contacto">
                    <img width="200" src="imagenes/logo.png" alt="logo">
                    <a href="tel:+50241543339">
                        <strong>Telefono:</strong> 
                        <span>+(502) 41543339</span>
                    </a>
                    <a href="mailto:edwintumax@gmail.com">
                        <strong>Email</strong> 
                        <span>edwintumax@gmail.com</span>
                    </a>
                </div>
                <form id="formContacto" class="formulario" method="post" action="ServletContacto.do">
                    <div class="col1">
                        <label for="nombre">Nombre</label>
                        <input type="text" id="nombre" name="nombre" required />        
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required/>                       
                        <div class="perfil">
                            <label for="junior">
                                <input type="radio" 
                                    name="developer" 
                                    id="junior" 
                                    checked 
                                    value="junior">Junior
                            </label>
                            <label for="senior">
                                <input type="radio" 
                                    name="developer" 
                                    id="senior" 
                                    value="senior">Senior
                            </label>
                        </div>
                        <div class="intereses">
                            <label for="c#">
                                <input type="checkbox" name="intereses" id="c#" value="c#">C#
                            </label>
                            <label for="vb">
                                <input type="checkbox" name="intereses" id="vb" value="vb">Visual Basic                            
                            </label>
                            <label for="sql">
                                <input type="checkbox" name="intereses" id="sql" value="sql">SQL
                            </label>
                            <label for="java">
                                <input type="checkbox" name="intereses" id="java" value="java">Java
                            </label>
                        </div>
                    </div>
                    <div class="col2">
                        <div>
                            <label for="comentario">Comentarios</label>
                            <textarea name="comentario" id="comentario" cols="30" rows="7"></textarea>
                            <input class="button" type="button" id="btnEnviarContacto" value="Enviar">
                        </div>
                        <div id="respuesta">
                        			                          
                        </div>                        
                    </div>
                </form>
            </div>
        </footer>
        <div id="form-login" class="modal" tabindex="-1" role="dialog">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title">Login</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <h1>Iniciar Sesion</h1>
		        <form action="" id="frmLogin">
		        	<div class="form-group">
		        		<label for="Email">Email</label>
		        		<input class="form-control" type="text"
		        			name="txtEmail" id="email" placeholder="Email">
		        	</div>		        	
		        	<div class="form-group">
		        		<label for="password">Password</label>
		        		<input class="form-control" type="password"
		        			name="txtPassword" placeholder="Password">
		        	</div>
		        	<div id="mensaje"></div>		        	
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
		        <button id="btnAutenticar" type="button" class="btn btn-primary">Login</button>
		      </div>
		    </div>
		  </div>
		</div>
    </body>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/app.js?1.0.2"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>             
</html>