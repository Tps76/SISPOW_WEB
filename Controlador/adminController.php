<?php
require_once '../Modelo/consultas.php';
require_once '../Modelo/Ruta.php';
require_once '../Modelo/Proveedor.php';


class adminController
{
    public function template()
    {
        include "src/template.php";
    }

    public function getProvAll()
    {
        $respuesta = Proveedor::getAllProv(); 
        if ($respuesta != "error") {
            // $contador = count($respuesta);
            foreach ($respuesta as $result) { 
                echo '  <tr>    
                        <td>'.$result['idproveedor'].'</td>
                        <td>'.$result['razon_social'].'</td>
                        <td>'.$result['nombre_proveedor']." ".$result['apellido_proveedor'].'</td>
                        <td>'.$result['direccion_proveedor'].'</td>
                        <td>'.$result['email_proveedor'].'</td>
                        <td>'.$result['telefono_proveedor'].'</td>
                        <td>
                        <div class="d-flex justify-content-between">
                            <a class="btn btn-outline-primary" data-toggle="modal" href="#editar"><i class="material-icons d-flex align-item-center ">edit</i> </a>
                            <a class="btn btn-outline-danger" data-toggle="modal" href="#eliminar"><i class="material-icons d-flex align-item-center ">delete</i> </a>
                        </div>
                        </td>
                    </tr>
                ';
            }
        }else {
            echo "no cogio la consulta";
        }
    }
    
    public function searchProv()
    {
        if (isset($_POST['buscar'])) {
            $resultado = Proveedor::getProv();
            if($resultado != false){
                echo '  <tr>    
                        <td>'.$respuesta['idproveedor'].'</td>
                        <td>'.$respuesta['razon_social'].'</td>
                        <td>'.$respuesta['nombre_proveedor']." ".$respuesta['apellido_proveedor'].'</td>
                        <td>'.$respuesta['direccion_proveedor'].'</td>
                        <td>'.$respuesta['email_proveedor'].'</td>
                        <td>'.$respuesta['telefono_proveedor'].'</td>
                        <td>
                        <div class="d-flex justify-content-between">
                            <a class="btn btn-outline-primary" data-toggle="modal" href="#editar"><i class="material-icons d-flex align-item-center ">edit</i> </a>
                            <a class="btn btn-outline-danger" data-toggle="modal" href="#eliminar"><i class="material-icons d-flex align-item-center ">delete</i> </a>
                        </div>
                        </td>
                    </tr>
                ';
            }else{
                echo "No se encontro proveedor";
            }
        }
    }
    
    public function regProv()
    {
        if (isset($_POST['regNom'])) {
            $nit;
            $nombre;
            $apellido;
            $razon;
            $direccion;
            $email;
            $contacto;
            $datos = array("nombre" => $nombre,
                           "apellido" => $apellido,
                           "razon" => $razon,
                           "direccion" => $direccion,
                           "email" => $email,
                           "contacto" => $contacto,
                           "nit" => $nit
                        );
            $respuesta = Proveedor::insertProv($datos);
        }
    }

    public function rutaAdminController(){
        if(isset($_GET['action'])){
            $enlace = $_GET['action'];
            $ruta = Ruta::rutaAdmin($enlace);
            if($ruta != false){
                include $ruta;
            }else{
                include "src/modules/panel.php";
            }
        }else{
            include "src/modules/panel.php";
        }
    }
}