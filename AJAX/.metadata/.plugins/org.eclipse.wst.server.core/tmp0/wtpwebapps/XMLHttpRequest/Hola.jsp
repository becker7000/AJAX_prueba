<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	
	<h3>Probando AJAX</h3>
	
	<button id="button" onclick="mostrar();">Mostrar</button>
	
	<div id="mostrar">Mensaje oculto</div>
	
	<script>
		
		function mostrar(){
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function(){
				if(this.readyState==4 && this.status==200){
					document.getElementById("mostrar").innerHTML=this.responseText;
				}
			}
			xhttp.open("get","saludo.jsp",true);
			xhttp.send();
		}
		
	</script>
	
</body>
</html>