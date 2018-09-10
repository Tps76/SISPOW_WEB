<?php

class Producto
{
    public function getAllProd()
    {
        $consulta = "SELECT * FROM producto";
        $consultas = consultas::seleccionar_datos($consulta);
        if ($consultas) {
            return array($consultas->fetch_assoc());
        }else{
            return "error";
        }
        $consultas->close();
    }
    public function insertProd($datos)
    {
        // code...
    }
}
