<?php
class conexion{
public static function credencial(){
	$hostname="localhost";
        $database="id6313732_sispow";
        $username="root";
        $password="";
        $conex=mysqli_connect($hostname,$username,$password,$database);
        return $conex;
}
}
?>