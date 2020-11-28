/* 
 * Sis Noticias 
 * 
 */

$(document).ready(function () {         
    
    // Function for update cantidad of Carrito
    $("tr #btnDelete").click(function () {
       var idp = $(this).parent().find("#idp").val(); // capturamos el id de la fila seleccionada
       // alert message with SweetAlert
       swal({
            title: "¿Está seguro de eliminar este registro?",
            text: "Una vez eliminado, no podrá recuperar este registro!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
                    if (willDelete) {
                        eliminar(idp);       
                      swal("Se ha eliminado el registro correctamente!", {
                        icon: "success",
                      }).then((willDelete)=>{
                          if(willDelete){
                              parent.location.href="Controlador?accion=Admin";
                          }
                      });
                    } else {
                      swal("Registro no eliminado!");
                    }
          });
       //
        console.log("IDPS: "+idp);       
        
    });
    function eliminar(idp){
        var url = "Controlador?accion=Eliminar";        
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp="+idp,
            success: function(data, textStatus, jqXHR){
                //alert("Registro eliminado.");
            }
        })
    }
    
}) ;


