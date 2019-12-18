<?php  error_reporting(E_ERROR | E_PARSE); ?>


<?php

    $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
    $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

     echo   "style='font-family: serif;'".  $dias[date('w')];
      
 ?>



 <?php
$fecha = date("Y-mm-d");
$hora_entrada = date("h:i:s",time()-23390);
$hora_salida = date("h:i:s",time()-23390);
$id = $_POST['id'];
$cedula = $_POST['cedula'];
$Cargo = $_POST['cargo'];
?>
