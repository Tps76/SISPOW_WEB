<?php
require_once("conexion.php");
class consultas{
    public function insertar($consulta){
    $conexion=conexion::credencial();
    $resultado=mysqli_query($conexion,$consulta) or die(mysqli_error($conexion));
    if($resultado){
            return "insertado";
    }
    }

    public function seleccionar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta) or die(mysqli_error($conexion));
        if($resultado){
            while($datos=mysqli_fetch_array($resultado)){
                return $datos;
            }
        } 
    }

    public function actualizar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta) or die(mysqli_error($conexion));
        if($resultado){
            return "actualizado";
        }
    }

    public function borrar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta) or die(mysqli_error($conexion));
        if($resultado){
            if($datos=mysqli_fetch_array($resultado)){
                return $datos;
            }
        } 
    }

    public function contar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta) or die(mysqli_error($conexion));
        if($resultado){
            if($datos=mysqli_fetch_array($resultado)){
                $datos_final=$datos[0]+1;
                return $datos_final;
            }
        } 
    }
}
?>
