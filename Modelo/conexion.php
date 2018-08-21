<?php
class conexion{
public static function credencial(){
	$hostname="localhost";
        $database="SISPOW";
        $username="root";
        $password="k";
        $conex=mysqli_connect($hostname,$username,$password,$database);
        return $conex;
}
}
?>