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
                        <li><a href="index.jsp#skills">Skills</a></li>
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
        <section class="tabla">
            <div class="contenedor">
                <table>
                    <thead>
                        <tr>
                            <th>Item</th>
                            <th>Año</th>
                            <th>Descripción</th>
                        </tr>        
                    </thead>
                    <tbody>
                        <tr>
                            <td>Item 1</td>
                            <td>2000</td>
                            <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus aut eos impedit, delectus nobis at soluta. Quae, fugit sed nam nihil quidem, velit ex atque, aut iure voluptatem ab necessitatibus.</td>
                        </tr>
                        <tr>
                            <td>Item 2</td>
                            <td>2004</td>
                            <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam accusantium animi neque tempora quisquam amet quidem omnis, nulla modi qui quod veniam, ea nihil illum quam dicta. Ut, hic deserunt.</td>
                        </tr>
                        <tr>
                            <td>Item 3</td>
                            <td>2017</td>
                            <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam harum molestias nisi possimus vel porro voluptatum, provident enim similique eaque maiores, suscipit delectus dicta pariatur recusandae. Vitae, sapiente! Dolorem, minus.</td>
                        </tr>
                    </tbody>
                </table>
            </div>
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
                <form class="formulario">
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
                0                    id="senior" 
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