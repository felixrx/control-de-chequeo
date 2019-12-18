 
<?php  include "../conexion/conexion.php";

error_reporting();

?>



<style type="text/css" media="screen">
@font-face {font-family:AllertaStencil-Regular;
src: url(./css/font/AllertaStencil-Regular.ttf) format("opentype");}
</style>

 <?php  

$cedula=$_POST['cedula'];



   $querybuscarh = $mysqli->query("SELECT asistencia.id, asistencia.cedula,asistencia.idmateria,asistencia.hora_entrada,asistencia.hora_salida,asistencia.foto_entrada,asistencia.foto_salida, asistencia.fecha,profesor.id_profesor, profesor.cedula, profesor.nombre, profesor.apellido,materia.idmateria,materia.nombremateria,materia.id_profesor  FROM asistencia 
    INNER JOIN profesor ON profesor.cedula=asistencia.cedula
     INNER JOIN materia  ON materia.idmateria=asistencia.idmateria
    where asistencia.cedula ='$cedula'  




     order by id DESC LIMIT 1  ")  or die ( "<br>No se puede ejecutar query   para buscar datos P ". $mysqli->error);



?>


<div class="table-responsive" >
            <table class="table col-sm-8">
                <tr class="primary " style="font-size: 18px;font-family:AllertaStencil-Regular; 
      color: white; background: rgb(0,137,186);
background: linear-gradient(0deg, rgba(0,137,186,1) 46%, rgba(116,177,230,1) 85%)">
                    <th>Nombre</th>
                  <th>Cargo</th>
                  <th>Entrada</th>
                  
                  <th>Salida</th>
                 
                  <th>Fecha</th>
                </tr>
                <tr style="background: #EEF8FB;">
<?php  
  if (mysqli_num_rows($querybuscarh) > 0 )
    {
            while (($fila=mysqli_fetch_array($querybuscarh)))
                { 
                  $id =$fila['id'];
                  $cedula= $fila['cedula'];
                  $nombre = $fila['nombre'];
                  $apellido = $fila['apellido'];
                  $materia=$fila['nombremateria'];
                  $hora_entrada= $fila['hora_entrada'];
                  $foto_entrada= $fila['foto_entrada'];
                  $hora_salida= $fila['hora_salida'];
                 
                  $foto_salida= $fila['foto_salida'];
                  $fecha= $fila['fecha'];
             
?>
      
            <td  ><?php echo "<h1 style='font-size: 20px;font-family:AllertaStencil-Regular;margin-top:35px;padding-left:0px;'>". $nombre=$fila['nombre']." ". $apellido= $fila['apellido']."</h1>"?></td>

            <td><?php echo "<h1 style='font-size: 20px;font-family:AllertaStencil-Regular; margin-top:35px;'>".$idmateria=$fila['nombremateria'] ?></td>
            <td><?php echo $hora_entrada=$fila['hora_entrada']."<br>" ?>

            <?php echo "<img style='border-radius:10px 10px 10px 10px;border: solid 2px; border-color: rgb(0,137,186);' src=\"paginas/fotos/".$foto_entrada= $fila['foto_entrada'].".png\" width=\"60\" height=\"60\" alt=\"\" />"?></td>
 
<td>
        <?php if ($hora_salida=='00:00:00')
          {
                  echo "no chequeo" ;
                }
          else
            {
                  echo $hora_salida=$fila['hora_salida']."<br>";
              }
        ?>
        
         <?php echo "<img style='border-radius:10px 10px 10px 10px; border: solid 2px; border-color: rgb(0,137,186);' src=\"paginas/fotos/".$foto_salida= $fila['foto_salida'].".png\" width=\"60\" height=\"60\" alt=\"\" />"?></td>

            <td><?php echo  "<h1 style='font-size: 20px;font-family:AllertaStencil-Regular;margin-top:35px;padding-left:0px;'>". $fecha=$fila['fecha'] ?></td>
        </tr>
    <?php } ?>
  <?php } ?>
          </table>
          </div>