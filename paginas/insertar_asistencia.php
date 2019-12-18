

<?php

error_reporting(0);
session_start();


$id_foto=uniqid()."-".time("hms");

$_SESSION['nomnbre_foto']= $id_foto;



$foto_entrada= $_SESSION['nomnbre_foto'];
$foto_salida=$_SESSION['nomnbre_foto'];

?>


<?php


  $hora_entrada = date("h:i:s",time()-23390);
  $hora_salida = date("h:i:s",time()-23390);
  $cedula = $_POST['cedula'];
  $fecha = date("Y/m/d");  
  $fechaServidor = date("Y-m-d");
  $conn = new mysqli("localhost","root","","pfphp");













$sql = "SELECT * FROM profesor WHERE cedula = ".$cedula.";";
    $query = $conn->query($sql);
       if (mysqli_num_rows($query) > 0 )
          {
             while (($fila=mysqli_fetch_array($query)))
                {
                   $id =$fila['id_profesor'];
                     $nombre = $fila['nombre'];
                 }
          }
if (mysqli_num_rows($query) > 0 )
 { 
    $materia = "SELECT * FROM materia WHERE id_profesor = ".$id.";";
    $queryMateria = $conn->query($materia);
    if (mysqli_num_rows($queryMateria) > 0 )
        {
          while (($fila=mysqli_fetch_array($queryMateria)))
            {
              $idmateria =$fila['idmateria'];
              $materia =$fila['nombremateria'];             
               $idmateria =$fila['idmateria'];
              
             }
          }

            

  }
if (mysqli_num_rows($query) == 0 ){
	 $resul = '3';                   
           echo "$resul";


  	# code...
  }

if (mysqli_num_rows($query) > 0 ){
	# code...



$querybuscars =   $conn->query("SELECT * FROM asistencia where cedula ='$cedula'") 
 or die ( "<br>No se puede ejecutar query  para buscar datos P ". $mysqli->error);
if (mysqli_num_rows($querybuscars) > 0 )
        {
             while (($fila=mysqli_fetch_array($querybuscars)))
               {
                 $id =$fila['id'];
                 $cedula= $fila['cedula'];
                
                 $hora_entrada= $fila['hora_entrada'];
                 $hora_salida= $fila['hora_salida'];
                 $fecha= $fila['fecha'];
                 
                     
               } 

        }

}




if (mysqli_num_rows($querybuscars) > 0  && $hora_salida=='')
	
{
   

  $hora_salida = date("h:i:s",time()-23390);   
 $queryUpdate = $conn->query("UPDATE asistencia SET hora_salida='$hora_salida' , foto_salida='$foto_salida' where  cedula='$cedula' and hora_entrada='$hora_entrada' and fecha='$fecha' and id='$id'") or die ("<br> No se puede ejecutar el query55555555555555");




          $resuls = '2';                   
           echo "$resuls";



}


else{



 
   $hora_entrada = date("h:i:s",time()-23390);
  $queryInsertar2 = $conn->query("INSERT INTO asistencia ( id, cedula,idmateria,hora_entrada,hora_salida,foto_entrada,foto_salida,fecha) values 
                ( null, '$cedula','$idmateria','$hora_entrada',null,'$foto_entrada',null,'$fecha')");

   


          $resuls = '1';                   
           echo "$resuls";





}


if (mysqli_num_rows($querybuscars) == 0 )
$hora_entrada = date("h:i:s",time()-23390);

  
 
{


   $queryInsertar2 = $conn->query("INSERT INTO asistencia where  and id='$id' ( id, cedula,idmateria,hora_entrada,hora_salida,foto_entrada,foto_salida,fecha) values 
                ( null, '$cedula','$idmateria','$hora_entrada',null,'$foto_entrada',null,'$fecha')");

          $resuls = '3';                   
           echo "$resuls";


}



?>

