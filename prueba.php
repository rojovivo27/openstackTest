<?php 
  $mysqli = new mysqli( "localhost", "root", "pistones", "pistones" );
  
  if( $mysqli->connect_errno )
  {
    echo "Lo sentimos, este sitio web esta experimentando problemas. <br />";
    echo "Error: Fallo al conectarse a MySQL debido a: <br />";
    echo "Errno: " . $mysqli->connect_errno . "<br />";
    echo "Error: " . $mysqli->connect_error . "<br />";
  }
  else
  {
    echo "Conexion exitosa";
  }
?>