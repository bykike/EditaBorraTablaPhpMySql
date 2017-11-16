// JavaScript Document
$(document).ready(function(e) {
	// Cuando la página se carge completamente actualizamos los eventos para editar/añadir/borrar filas en la tabla Datos
	cargaEventos();
});
 
function cargaEventos()
{
	// Cuando se pulse el icono de borrar, eliminará la fila afectada
	$(".borrar").click(function(e) {
		// TODO: Poner el código para eliminar el registro indicado de la tabla
		$(this).parent("td").parent("tr").remove("tr");
	});
 
	// Cuando se pulse el icono de agregar fila...
	$(".mas").click(function(e) {
		// TODO: Comprobar que no existan más filas vacias
		// Clonamos la fila Vacía
		var nuevo=$("#vacio").clone(true);
		// Elinamos su id, para despues editarlo		
		$(nuevo).attr("id","");
		// Capturamos la posición de la fila donde hemos pulsado el icono de agregar
		var indice= $(this).parent("td").parent("tr").index();
		// Añadimos la nueva fila vacia después de la fila en que hemos pulsado
		$("#datos> tbody > tr").eq( indice ).after( nuevo );
	});
 
	// Cuando hagamos algún cambio en alguno de los campos...
	$("input").change(function(e) {
		// Buscamos en la fila donde se han editado los datos, el campo que contiene la ID (idMenu) del registro
		var id=$(this).parent().parent().find("input[name*='idMenu']");
		// Capturamos la ID del registro
		var laID=$(id).val();
		// Cogemos el nombre del campo editado
		var campo=$(this).attr("name");
		// Cogemos el nuevo valor
		var valor=$(this).val();
		// Cogemos el tipo del campo, para saber como ha de comportarse con los datos introducidos
		var tipo=$(this).prop("type");
 
		switch(tipo)
		{
			case "checkbox": // Si el campo es del tipo CHECKBOX, y está marcado, cambiamos el valor 1, si no lo está el valor será 0
				valor=($(this).prop("checked")) ? "1":"0";
				break;
		}
 
		// Llamamos al script (grabra.php) que se encargará de trabajar los datos en la Base de Datos, y pasamos como parámetros
		// idMenu: la id del registro
		// campo: el campo a modificar
		// valor: el valor a grabar		
		$.ajax
		({
			type: "POST",
			url: "grabar.php",
			async:false,
			data:
				{
				idMenu: laID,
				campo: campo,
				valor: valor
				}
		})
		.done(function( msg )
		{
			// Capturamos el valor devuelto por el script
			// Si el valor devuelto no es el texto "actualizado", quiere decir que el registro es nuevo, y por lo tanto el valor devuelto es la ID que le corresponde		
			if ( msg != "actualizado" )
			{
				// Mostramos la ID del nuevo registro
				$(id).val(msg);
			}
			return false;
		});
	});
};