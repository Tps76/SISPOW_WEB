<?php

class Categoria
{
    public function loadcat()
    {
        $consulta = "SELECT idcatproducto, nombre_categoria FROM categoria_prodicto";
        $consultas = consultas::seleccionar_datos($consulta);
        if ($consultas) {
            return array($consultas->fetch_assoc());
        } else {
            return "error";
        }
    }
    
    public function insertCat($nom)
    {
        // $nom = $datos['nombre'];
        // $img
        $consulta = "INSERT INTO categoria_poducto(nombre_categoria) VALUES ('$nom')";
        $consultas = consultas::insertar($consulta);
        return $consultas;
    }

    public function getCat($nom)
    {
        $consulta = "SELECT * FROM categoria_producto WHERE nombre_categoria LIKE '$nom'";
        $consultas = consultas::seleccionar_datos($consulta);
        if ($consultas) {
           return $consultas->fetch_assoc();
        }
    }

    public function getAllCat()
    {
        $consulta = "SELECT * FROM categoria_producto";
        $consultas = consultas::seleccionar_datos($consulta);
        if ($consultas) {
            return array($consultas->fetch_assoc());
        }else{
            return "error";
        }
    }


}
