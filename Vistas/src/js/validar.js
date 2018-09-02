$('#pass').on('input', function() { //#pass = input campo
    var pass = $(this).val()
    if(pass!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});
$('#id').on('input', function() { 
    var id = $(this).val()
    if(id!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});
$('#name').on('input', function() { 
    var name = $(this).val()
    if(name!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});
$('#last-name').on('input', function() { 
    var lastName = $(this).val()
    if(lastName!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});

$('#tel').on('input', function() { 
    var tel = $(this).val()
    if(tel!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});
$('#cel').on('input', function() { 
    var cel = $(this).val()
    if(cel!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});
$('#email').on('input', function() {
    var email = $(this).val()
    if(email!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});
$('#dir').on('input', function() { 
    var dir = $(this).val()
    if(dir!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});
$('#user').on('input', function() { 
    var user = $(this).val()
    if(user!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});