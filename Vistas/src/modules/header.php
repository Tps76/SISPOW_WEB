<section class="col-md-2">
    <p class="align-middle">Logo empresa</p>
</section>
<section class="col-md-7 input-group">
    <input class="search form-control" type="search" name="search" id="search">
    <input class="search__btn" type="submit" value="Buscar">
</section>
<section class="col-md-3">
    <ul class="session text-right">
        <li class="session__item"><a class="session__link" data-placement="bottom" role="button" data-toggle="popover" data-title="" data-container="body"  data-html="true" href="#" id="login">Iniciar sesion  /</a></li>
        <li class="session__item"><a class="session__link" href="#" id="signUp" data-toggle="modal" data-target="#regModal">Registrarse</a></li>
    </ul>
    <!-- Cuadro ingresar -->
    <div class="d-none" id="popover-content">
        <form action="" class="form-group">
            
            <label for="username">Usuario:</label>
            <input class="form-control" type="text" name="" id="username">
            <label for="userpassword">Contraseña</label>
            <input class="form-control" type="password" name="" id="userpassword">
            <input class="form-control" type="submit" value="Iniciar sesión">
        
        </form>
    </div>
    <!-- Cuadro de registro Modal -->
    <div class="modal" id="regModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Registro</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" class="form-group">
            
            <label for="id">Identificación:</label>
            <input type="text" class="form-control" name="id" id="id">
            <label for="name">Nombres:</label>
            <input type="text" class="form-control" name="name" id="name">
            <label for="last-name">Apellido:</label>
            <input type="text" class="form-control" name="last-name" id="last-name">
            <label for="tel">Telefono:</label>
            <input type="text" class="form-control" name="tel" id="tel">
            <label for="cel">Celular:</label>
            <input type="text" class="form-control" name="cel" id="cel">
            <label for="email">Email:</label>
            <input type="text" class="form-control" name="emai" id="emai">
            <label for="dir">Dirección:</label>
            <input type="text" class="form-control" name="dir" id="dir">
            <label for="user">Usuario:</label>
            <input type="text" class="form-control" name="user" id="user">
            <label for="pass">Contraseña:</label>
            <input type="text" class="form-control" name="pass" id="pass">

            <label for="">Seleccion de tipo de usuario: </label>
            <select class="form-control" name="" id="">
                <option selected>escoja usuario</option>
                <option value="admin">administrador</option>
                <option value="empleado">empleado</option>
                <option value="cliente">cliente</option>
            </select>

            <div class="text-right">
                <input class="btn btn-success" type="submit" value="Enviar">
            </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
      </div>
    </div>
  </div>
</div>
</section>