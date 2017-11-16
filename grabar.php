<?php
// TODO: Crear código para eliminar el registro
 
// Los datos de conexión a la Base
$servidor= "localhost";
//$puerto  = "3306";
$bd      = "vdc";
$usuario = "??????";
$contra  = "??????";
 
// Iniciamos la conexión
$conexion = new mysqli($servidor, $usuario, $contra, $bd);
if (mysqli_connect_errno())
{
	// La conexión, no se ha podido realizar
	die("No ha sido posible conectar con la base de datos");
}
 
// Comprobamos si se ha pasado una id
if ( $_REQUEST['idMenu'] != "") $item['idMenu'] = $_REQUEST['idMenu'];
// Capturamos los datos pasado en codificación utf8, mara que graba eñes y acentos
$item['campo'] = utf8_decode($_REQUEST['campo']);
$item['valor'] = utf8_decode($_REQUEST['valor']);
 
grabaItem( $item );
function grabaItem( $item )
{
	$nuevo=false;
	// Si se ha pasado una ID ...
	if ( isset($item['idMenu']) )
	{
		// quiere decir que el registro existe, y por lo tanto modificamos el valor del campo correspondiente
		$sql="UPDATE `vdc`.`menu` SET ".$item['campo']."='".$item['valor']."' WHERE idMenu='".$item['idMenu']."'";
	}
	else
	{
		// Si no existe, insertamos un nuevo registro
		$sql="INSERT INTO `vdc`.`menu` (".$item['campo'].") values ('".$item['valor']."')";
		$nuevo=true;
	}
	$resultado = $this->conexion->query($sql);
 
	// Si se ha insertado un nuevo registro, "devolvemos" la id asisnada
	if( $nuevo ) print_r (mysqli_insert_id($this->conexion) );
	// si no, devolvemos que el registro ha sido actualizado
	else print_r(  "actualizado" );
	return;
}
?>