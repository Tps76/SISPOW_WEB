$('#pass').on('input', function() { //#pass = input campo
    var pass = $(this).val()
    if(pass!=""){
       document.getElementById("boton_enviar_registro").removeAttribute('disabled');
    }else{
       document.getElementById("boton_enviar_registro").setAttribute('disabled' , 'diabled');
    }
});