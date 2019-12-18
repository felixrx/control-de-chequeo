<!DOCTYPE html>
<html lang="es"><head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	
	<title>Control de Asistencia</title>
	
	
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<link rel="stylesheet" href="css/bootstrap-grid.css">
	<link rel="stylesheet" href="css/bootstrap-reboot.css">
	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">


	<link rel="stylesheet" type="text/css" href="js/jquery.lightbox-0.5.css" media="screen" />
	

	
	<script type="text/javascript" src="js/Formato_hora.js"></script>
	<script type="text/javascript" src="js/hora.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>


<link href="css/style.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet">

<script src="js/sweetalert2.min.js"></script>
 
<link rel="stylesheet" type="text/css" href="css/sweetalert2.min.css">


<style type="text/css" media="screen">
@font-face {font-family:AllertaStencil-Regular;
src: url(css/font/AllertaStencil-Regular.ttf) format("opentype");}
</style>


</head>
<body style="padding-top: 0px;">



<script type="text/javascript">
		

	function ponleFocus(){
    document.getElementById("cedula").focus();
}

	</script>




<div class="container" style="border: solid 3px; border-radius: 0px 0px 10px 10px; padding-bottom:  100px; border-color: rgb(0,137,186);">


	<div class="row" style="background: rgb(0,137,186);
background: linear-gradient(0deg, rgba(0,137,186,1) 46%, rgba(116,177,230,1) 85%);">
		<div class="col-lg-12 text-center" style="background: rgb(0,137,186);
background: linear-gradient(0deg, rgba(0,137,186,1) 46%, rgba(116,177,230,1) 85%);">
			<h1 style="text-align:center;  font-size: 32px;font-family:AllertaStencil-Regular; 
			color: white;" >Control de Asistencia</h1>
		</div>


	</div>
 	<div class="row" >

		<div class="col-lg-12">

			<div class="col-md-5" >

        		
        		<?php

    $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
    $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

   


        	 echo  "<p style='text-align:center; padding-top:30px; font-size: 22px;font-family:AllertaStencil-Regular;'>".$dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]." del ".date('Y') ."</p>"?>
      

			</div>
			<div class="col-md-3">
		
								<?php echo  "<h1 style='text-align:center;margin-top:24px;
								 font-size: 35px;font-family:AllertaStencil-Regular;' id='reloj'></h1>"?>

			</div>
				<div class="col-md-4" style="margin-top: 28px;">



           			<form action=""  method="post" style="text-align: center; font-size: 10px;font-family: serif; ">



               		<input type="text" class="" name="cedula" style="width: 200px; height:35px; border-top-left-radius: 10px;border-bottom-left-radius: 10px; font-size: 18px;font-family:AllertaStencil-Regular;" autofocus required  placeholder="   Ingrese su ID" autocomplete="off" name="cedula" id="cedula" value="">


 					


 					<input type="button" id="add" class="btn btn" style="background: rgb(0,137,186);font-family:AllertaStencil-Regular; color: white; height:40px; margin-bottom: 10px; " value="OK">

 				
 

          		</form>


      		</div>

	
	

      		
  		</div>
	</div>


	<div class="row">
		<div class="col-sm-12" style="background-color: white">
			<div class="col-sm-4" style="padding-top:70px;">

 <div class="col-sm-12">
                            <video  class="col-sm-12"  style=" border-radius:8px 8px 8px 8px; padding:4px; border:40px;border:solid;border-color: rgb(0,137,186); background: rgb(0,137,186);"   id="video""></video>
                            <div class="scanner-laser laser-rightBottom" style="opacity: 0.5;"></div>
                            <div class="scanner-laser laser-rightTop" style="opacity: 0.5;"></div>
                            <div class="scanner-laser laser-leftBottom" style="opacity: 0.5;"></div>
                            <div class="scanner-laser laser-leftTop" style="opacity: 0.5;"></div>
                        </div>

		
	<br>
	
	<p id="estado"><a target="_blank" href=""></a></p>
	<canvas id="canvas" style="display: none;" width="640" height="480"></canvas>


<script type="text/javascript" src="js/camara.js"></script>
   			</div>
			<div class="col-sm-8" >


				
<div id="container" class="" style="padding-top: 70px;">
	
	<div id="result">
		

	</div>
</div>
				</div>
			</div>
		</div>
</div>



<script type="text/javascript">
	
		//obtemos datos
$(document).ready(function(){     
      $("#cedula").keypress(function(e) {
        if(e.which == 13) {

         
          $("#add").click();

          
        }
      });
});


</script>

	


<script type="text/javascript">
	


	
$(document).ready(function() {
	//obtemos datos
	

	function obtener_datos(){

var cedula = $("#cedula").val();
		$.ajax({

				url: "querys/consulta_asistencia.php",
				method: "POST",
					data: {cedula: cedula},
				success: function(data){
				   $("#result").html(data)

		}
	})



}

obtener_datos();

$(document).on("click", "#add", function(){
	


 

	var cedula = $("#cedula").val();

data = $(this).serialize();



function obtener_datos(){


		$.ajax({

				url: "querys/consulta_asistencia.php",
				method: "POST",
					data: {cedula: cedula},
				success: function(data){
				   $("#result").html(data)

		}
	})



}

obtener_datos();




			
// 

	$.ajax({


 		
		url: "paginas/insertar_asistencia.php",
		
		method: "POST",
		
		data: {cedula: cedula},

		
		success: function(data){
			$("#gallery").html(data);
			


    



obtener_datos();


  // overflow console.log(data.key); // value } }); 


//console.log("el valor es:" +data)

			if (data == 13 ) {
				swal({
					
			type: 'success',
            title: 'Chequeo de Entrada..!',
			timer: 1500,			
			showConfirmButton: false,			  
						  
		})}	
		if (data == 313) {
				swal({
					
			type: 'error',
            title: 'Usuario no Registrado en el Sistema..!',
			timer: 1500,			
			showConfirmButton: false,			  
						  
		})}	

if (data == 23) {
				swal({
					
			type: 'success',
            title: 'Chequeo de salida..!',
			timer: 1500,			
			showConfirmButton: false,			  
						  
		})}	

				;	
		

		}



		
	})


	$('input[type="text"]').val('');


})
// actualizardatos




			



});



</script>





</body>
</html>