<?php

class Producto
{
    public function getProd()
    {
        $con = Connection::getInstance();
        $db = $con->getBD();
        $consulta = "SELECT * FROM productos";
        $stmt = $db->prepare($consulta);
        if ($stmt->execute()) {
            return $stmt->fetchAll();
        }else{
            return "error";
        }
        $stmt->close();
    }
    public function regProd($datos)
    {
        // code...
    }
}
