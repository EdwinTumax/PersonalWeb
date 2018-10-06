$('#btnEnviarContacto').click(function(){
	$.ajax({		
		url: "/PersonalWeb/ServletContacto.do",
		data: $("#formContacto").serialize(),
		error:function(){
			$("#mensaje").append("{mensaje:'Error en el servlet'}");
		},
		success:function(data){
			alert(data);
			$("#mensaje").append(data.mensaje);
		}
	});
});
$('#btnAutenticar').click(function(){
	$.ajax({		
		url: "/PersonalWeb/ServletAutenticar.do",
		data: $("#frmLogin").serialize(),
		datatype: "json",
		error:function(){
			$("#mensaje").html("Error en el servlet");
		},
		success:function(data){		
			$("#mensaje").html(data);
		}
	});
});
$('#form-login').on('shown.bs.modal', function () {
	 //alert('Form');
	$('#email').trigger('focus');
});