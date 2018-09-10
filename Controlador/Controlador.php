<?php
require_once '../Modelo/consultas.php';
require_once '../Modelo/Ruta.php';
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
        include '../vistas/src/template.view.php';
    }

    //registro julian
    public function registrar(){
    if (isset($_POST["id"]) && isset($_POST["tipo_identificacion"]) && isset($_POST["name"]) && isset($_POST["last-name"]) && isset($_POST["genero"]) && isset($_POST["ciudad"]) && isset($_POST["tel"]) && isset($_POST["cel"]) && isset($_POST["emai"]) && isset($_POST["dir"]) && isset($_POST["user"]) && isset($_POST["pass"]) && isset($_POST["tipo_usuario"])){
        $id=$_POST['id'];
        $tipo_identificacion=$_POST['tipo_identificacion']; 
        $name=$_POST['name'];
        $last_name=$_POST['last-name'];
        $genero=$_POST['genero'];
        $ciudad=$_POST['ciudad'];
        $date=$_POST['date'];
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
        //echo $id." ".$name." ".$last_name." ".$genero." ".$ciudad." ".$date." ".$telefono." ".$celular." ".$email." ".$direccion."".$user." ".$password." ".$tipo_final;
        $consulta_identidad="INSERT INTO identidad(tipo_identidad,numero_identidad) VALUES('$tipo_identificacion','$id')";
        if($resultado_identidad=consultas::insertar($consulta_identidad)=="insertado"){
            $consulta_seleccionar_id="SELECT ididentidad FROM identidad WHERE numero_identidad=$id";
            $resultado_seleccionar_id=consultas::seleccionar($consulta_seleccionar_id);
            $consulta_persona="INSERT INTO persona(ididentidad,nombre_persona,apellido_persona,genero,fecha_nacimiento,idciudad,direccion,telefono,estado_persona) VALUES('$resultado_seleccionar_id[0]','$name','$last_name','$genero','$date','$ciudad','$direccion','$telefono',0)";
            if ($resultado_persona=consultas::insertar($consulta_persona)=="insertado") {
                 $consulta_usuario="INSERT INTO usuario(email_usuario,password_usuario,tipo_usuario,estado_usuario) VALUES('$email','$password','$tipo_final',0)";
                 if($conresultado_usuario=consultas::insertar($consulta_usuario)=="insertado"){
                     $consultas="registrado";
                     header("Location: ../Vistas/index.php?msg=$consultas");
                 }else{
                     $consultas="no registrado";
                     header("Location: ../Vistas/index.php?msg=$consultas");
                 }
            }else{
                 $consultas="no registrado";
                 header("Location: ../Vistas/index.php?msg=$consultas");
            }
        }else{
            $consultas="no registrado";
            header("Location: ../Vistas/index.php?msg=$consultas");
        }
    }
    }
    //iniciar sesion Manuel Morales y julian :3
    public function iniciar_sesion(){
        session_start();
        if (isset($_POST["user"]) && isset($_POST["pass"])) {
            $user=$_POST['user'];
            $password=$_POST['pass'];
            //echo $user+" "+$password;
        $consulta = "SELECT * FROM usuario WHERE email_usuario='$user' AND password_usuario='$password'";
        $consultas=consultas::seleccionar($consulta);
        if ($consultas["idusuario"]!="") {
            $_SESSION["nueva"]=$consultas;
            $consultas="Bienvenido ".$consultas["idusuario"];
            
            header("Location: ../Vistas/index.php?msg=$consultas");
        }else{
            $consultas="Datos incorrectos, sesion no iniciada";
            header("Location: ../Vistas/index.php?msg=$consultas");
        }
        }
 
    }
    public function cerrar_sesion(){
        session_start();
        session_unset();
        session_destroy(); //no se si esta se debe hacer para guardar las configuraciones que haga el cliente
        $consulta="Sesion cerrada";
        header("Location: ../Vistas/index.php?msg=$consultas");
    }

    //Buscador <Chris></Chris>
    public function buscador(){
        if(isset($_POST['search'])){

            $salida = "";
            $query = "SELECT * FROM productos ORDER By idproducto";
            $con=consultas::seleccionar($query);
            if(isset($_POST['consulta'])){
                $rs = $con->real_scape_string($_POST['$con']);
                $query = "SELECT idproducto, nombre_producto FROM productos WHERE nombre_producto LIKE '%".$q."%' ";
                
            }

            $res = $mysqli->query($query);

            if($res->num_rows > 0){

                $salida =  "<div class='card'>
                                    <img src='data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22286%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20286%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_164eefd60a6%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A14pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_164eefd60a6%22%3E%3Crect%20width%3D%22286%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22107.203125%22%20y%3D%2296.3%22%3E286x180%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E' alt='' class='card-img-top'>
                                <div class='card-body'>
                                        <h5 class='card-title'>nombre producto</h5>
                                    <a href='#' class='btn btn-success'>comprar</a>
                                    <a href='#' class='btn btn-primary' data-toggle='modal' data-target='#detalle'>ver más</a>
                                </div>
                            </div>";
            } else {
                $salida = "No hay coincidencias";
            }

            echo $salida;
            $con->close();
        }
    }
    // Daniela enlaces para la página de admin
    public function rutaAdminController(){
        if(isset($_GET['action'])){
            $enlace = $_GET['action'];
            $ruta = Ruta::rutaAdmin($enlace);
            if($ruta != false){
                include $ruta;
            }
        }
    }
}
new Controlador();
?>