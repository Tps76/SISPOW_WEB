$(buscador());

function buscador(consulta){
    $.ajax({
        url: '../modules/header.php',
        url: '../modules/products.php',
        type: 'POST',
        dataType: 'html',
        data: {consulta: consulta},
    })
    .done(function(respuesta){
        $("#prod").html(respuesta);
    })
    .fail(function(){
        console.log("error");
    })
}

$(document).on('keyup', '#search', function(){
    var valor = $(this).val();
    if(valor != ""){
        buscador(valor);
    } else {
        buscador();
    }
});