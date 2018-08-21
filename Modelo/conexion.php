<?php

 

class conexion{
public static function credencial(){
	$hostname="localhost";
        $database="SISPOW";
        $username="root";
        $password="";
        $conex=mysqli_connect($hostname,$username,$password,$database);
        
        if ($conex) {
                echo "conexion valida";
        }else{
                echo "conexion invalida";
        }
        
        return $conex;
}
}

$conexion = new connection; 

$conexion -> credencial();



?>