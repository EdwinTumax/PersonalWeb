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