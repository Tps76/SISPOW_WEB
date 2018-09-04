<?php
require_once("conexion.php");
class consultas{

    public function insertar($consulta){
    $conexion=conexion::credencial();
    $resultado=mysqli_query($conexion,$consulta);
    if($resultado){
        return "insertado";
    }else{
        return "no insertado";
    }
    }

    public function seleccionar_datos($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta);
        if($resultado){
            return $resultado;
        } 
    }

    public function seleccionar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta);
        if($resultado){
            while($datos=mysqli_fetch_array($resultado)){
                return $datos;
            }
        } 
    }

    public function actualizar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta);
        if($resultado){
            return "actualizado";
        }else{
            return "no actualizado";
        }
    }

    public function borrar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta);
        if($resultado){
            return "borrado";
        }else{
            return "no borrado";
        } 
    }

    public function contar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta);
        if($resultado){
            if($datos=mysqli_fetch_array($resultado)){
                $datos_final=$datos[0]+1;
                return $datos_final;
            }
        } 
    }

    public function buscar($consulta){
        $conexion=conexion::credencial();
        $resultado=mysqli_query($conexion,$consulta);
        if($resultado){
            return $resultado;
        } else {
            return "No encontrado";
        }
    }
}
?>