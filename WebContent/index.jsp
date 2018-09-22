<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mi sitio web</title>
<link href="css/estilo.css" rel="stylesheet">
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
                        <li><a href="bibliography.jsp">Bibliography</a></li>
                    </ul>
                </nav>
            </header>        
            <section id="portada">
                <div class="contenedor">
                    <h1 class="titulo">Edwin Tumax</h1>
                    <h3 class="titulo-a">El trabajo bien hecho</h3>
                    <button class="button">Bibliografia</button>
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
                <form class="formulario" method="post" action="ServletContacto.do">
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
                            <input class="button" type="submit" value="Enviar">
                        </div>
                    </div>
                </form>
            </div>
        </footer>
    </body>
</html>