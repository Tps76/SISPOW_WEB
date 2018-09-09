<?php

class Ruta
{
    public function rutaAdmin($enlace)
    {
        if ($enlace == "panel" || $enlace == "productos" || $enlace == "addProducto" || 
            $enlace == "empleados" || $enlace == "addEmpleado" || $enlace == "clientes" || 
            $enlace == "addCliente" || $enlace == "proveedores" || $enlace == "addProveedor") {

            $module = "src/modules/". $enlace .".php";

        }else{
            $module = false;
        }
        return $module;
    }
}