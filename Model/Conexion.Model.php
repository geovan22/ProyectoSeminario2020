<?php
    include_once('Framework/Medoo/Medoo.php');
	use Medoo\Medoo;
    class Conexion
    {
       public function ConexionDB()
       {
            $conexion = new Medoo([
            	// required
                /*
            	'database_type' => 'mysql',
            	'database_name' => 'ottos_26323356_seminario',
            	'server' => 'localhost',
            	'username' => 'root',
            	'password' => '',
                */
                'database_type' => 'mysql',
            	'database_name' => 'ottos_26323356_seminario',
            	'server' => 'sql212.tonohost.com',
            	'username' => 'ottos_26323356',
            	'password' => 'Geo4160150087.',
             
            	// [optional]
            	'charset' => 'utf8mb4',
            	'collation' => 'utf8mb4_general_ci'
            ]);
            
            return $conexion;
       }
    }
?>