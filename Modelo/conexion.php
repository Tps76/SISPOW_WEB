<?php
class conexion{ //clase conexion
public static function credencial(){ //funcion integrada en la clase conexion
        $hostname="localhost"; //nombre del servidor
        $database="id6313732_sispow"; //nombre de la base de datos
        $username="id6313732_oscar"; //usuario del servidor
        $password="12345"; //contraseña del servidor
        $conex=mysqli_connect($hostname,$username,$password,$database);//variable donde se guarda la conexion para ser reutilizada
        if ($conex) {//si conexion es realizada realizar echo y retornar conexion
                echo "conexion valida";
                return $conex;
        }else{//si conexion no es realizada realizar echo
                echo "conexion invalida";
        }
}
}
$conexion = new connection;//llamada a clase y se instancia 
$conexion -> credencial();//llamada a funcion contenida en conexion
//esta llamada no es necesaria si ya se tiene la conexion. Se procede con la consulta.
?>