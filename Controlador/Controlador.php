<?php
require_once '../Modelo/consultas.php';
class Controlador{
    public function __construct(){
    $accion= isset($_GET["accion"]) ? $_GET["accion"] : "Inicial";
    if(method_exists($this, $accion)){
        $this->$accion();
    }else{
        $this->error();
    }
    }


    public function Inicial(){
        include 'src/template.view.php';
    }


    public function registrar(){
    if (isset($_POST["id"]) && isset($_POST["name"]) && isset($_POST["last-name"]) && isset($_POST["tel"]) && isset($_POST["cel"]) && isset($_POST["emai"]) && isset($_POST["dir"]) && isset($_POST["user"]) && isset($_POST["pass"]) && isset($_POST["tipo_usuario"])){
        $id=$_POST['id'];
        $name=$_POST['name'];
        $last_name=$_POST['last-name'];
        $telefono=$_POST['tel'];
        $celular=$_POST['cel'];
        $email=$_POST['emai'];
        $direccion=$_POST['dir'];
        $user=$_POST['user'];
        $password=$_POST['pass'];
        $tipo_usuario=$_POST['tipo_usuario'];
        if($tipo_usuario=="administrador"){
            $tipo_final=1;
        }else if($tipo_usuario=="empleado"){
            $tipo_final=2;
        }else{
            $tipo_final=3;
        }
        $consulta="INSERT INTO usuario(idusuario,email_usuario,password_usuario,tipo_usuario,estado_usuario) VALUES('$id','$email','$password','$tipo_final',0)";
        if($consultas=consultas::insertar($consulta)=="insertado"){
            $consultas="registrado";
            header("Location: ../Vistas/index.php?msg=$consultas");
        }else{
            $consultas="no registrado";
            header("Location: ../Vistas/index.php?msg=$consultas");
        }
        
    }
    }
}
new Controlador();
?>