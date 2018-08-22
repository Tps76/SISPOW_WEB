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
        }else{
                echo "conexion invalida";
        }
        
        return $conex;
}
}
$conexion = new connection; 
$conexion -> credencial();

?>