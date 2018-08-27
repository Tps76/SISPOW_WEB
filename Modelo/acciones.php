<?php
require_once("consultas.php");//requiere consultas.php
class acciones{//clase acciones
    public function prueba(){// funcion prueba
    $consulta="sentencia sql";//sentencia sql que sera enviada a la consulta generalizada
    $resultado=consultas::ejemplo($consulta);//variable que guardara el retorno de la consulta generalizada
    }
}
$acciones = new acciones();//llamada a clase acciones instanciandola
$acciones->prueba();//llamada a la funcion prueba
?>
