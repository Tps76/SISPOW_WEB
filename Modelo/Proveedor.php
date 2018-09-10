<?php
require_once '../Modelo/conexion.php';

class Proveedor
{

    public function getAllProv()
    {
        $consulta = "SELECT * FROM proveedor";
        $consultas = consultas::seleccionar_datos($consulta);
        if ($consultas) {
            return array($consultas->fetch_assoc());
        }else{
            return "error";
        }
        $consultas->close();
    }
    public function getProv($id, $nombre)
    {
        $consulta = "SELECT * FROM proveedres WHERE idproveedor LIKE '$id' OR nombre_proveedor LIKE ".$nombre;
        $consultas = consultas::seleccionar_datos($consulta);
        if ($consultas) {
            return $consultas->fetch_assoc();
        }else{
            return false;
        }
        $consultas->close();
    }

    public function insert($datos)
    {
        $nit = $datos['nit'];
        $nombre = $datos['nombre'];
        $apellido = $datos['apellido'];
        $razon = $datos['razon'];
        $direccion = $datos['direccion'];
        $email = $datos['email'];
        $contacto = $datos['contacto'];
        $consulta = "INSERT INTO proveedor(idproveedor, razon_social, nombre_proveedor, apellido_proveedor, direccion_proveedor, email_proveedor, telefono_proveedor) VALUES('$nit','$razon','$nombre','$apellido','$direccion','$email','$contacto')";
        $consultas = consultas::insertar($consulta);
        return $consultas;
    }
    public function loadProv()
    {
        $consulta = "SELECT idproveedor, nombre_proveedor, apellido_proveedor,razon_social FROM proveedor";
        $consultas = consultas::seleccionar_datos($consulta);
        if ($consultas) {
            return array($consultas->fetch_assoc());
        }else{
            return "error";
        }
    }
}
