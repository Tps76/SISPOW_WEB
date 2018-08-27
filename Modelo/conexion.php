<?php
class conexion{
public static function credencial(){
        $hostname="localhost";
        $database="id6313732_sispow";
        $username="id6313732_oscar";
        $password="12345";
        $conex=mysqli_connect($hostname,$username,$password,$database);
        if ($conex) {
                echo "conexion valida";
                return $conex;
        }else{
                echo "conexion invalida";
        }
}
}
$conexion = new connection;
$conexion -> credencial();
?>