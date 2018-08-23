<?php
require_once("conexion.php");//requiere conexion.php
class consultas{//clase consultas
    public function ejemplo($consulta){//funcion ejemplo que recibe una consulta
    $conexion=conexion::credencial();//llamamos la clase conexion y ejecutamos la funcion credencial
    $resultado=mysql_query($conexion,$consulta);//ejecutamos un query con la conexion recibida y la consulta dada al inicio de la funcion
    if($resultado){//si se ejecuta correctamente la consulta
        //if se utiliza con un array o solo una cadena de datos
        if($datos_if=mysqli_fetch_array($resultado)){//si recupera datos de la consulta, guardarlos en la variable datos_if
            return $datos_if;//retone datos_if
        }
        //while se utiliza con muchos arrays o varias cadenas de datos
        while($datos_while=mysqli_fetch_array($resultado)){//mientras recupera datos de la consulta, guardarlos en la variable datos_while
            return $datos_while;//retorne datos_while
        }
    }
    }
}
//change
//este archivo contiene consultas generalizadas donde le enviaremos un string con la consulta y nos devolvera el resultado.
//cambio 2 
?>
