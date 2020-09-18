<?php
	class Usuarios
    {
        public $usuario;
        public $smarty;
        public $educativo;
        
        public function __construct()
        {
            $this->smarty=new Smarty();
            $this->caching = true;
            $this->compile_check = true;
            $this->usuario=new Usuario();
            $this->educativo=new Educativo();
        }
        
        
        /**
         * crear puesto, empleado, docente, estudiante y usuario
         */
        public function CrearPuesto()
        {
            
            $puesto=$_POST['Puesto'];
            $consulta=$this->usuario->CrearPuesto($puesto);
            
        } 
         
        /**
         * buscar empleado, docente, estudiante y usuario
         */
        public function BuscarUsuario()
        {
            $user=$_POST['user'];
            $pass=$_POST['pass'];
            $user=$this->usuario->BuscarUsuario($user,$pass);
            
            if(count($user)==1)
            {
                $tipo=$this->educativo->BuscarPuesto($user[0]['Pro_Puesto_id_Pro_Puesto']);
                
                if($tipo[0]['Puesto']=="Director")
                {
                    $this->smarty->assign('vista','Default');
                    $this->smarty->assign('title','Director');
                    $this->smarty->display('Default.tpl');
                }
                else if($tipo[0]['Puesto']=="Maestro")
                {
                    echo "maestro";
                }
                else if($tipo[0]['Puesto']=="Alumno")
                {
                    echo "Alumno";
                }
                else if($tipo[0]['Puesto']=="Empleado")
                {
                    echo "Empleado";
                }
                else
                {
                    echo "puesto no encontrado";
                }
            }
            
            else
            {
                $this->smarty->assign('title','Colegio');
                $this->smarty->display('Default.tpl');
            }
            
            
        }
        
        
        
        /**
         * modificar empleado, docente, estudiante y usuario
         */
         
        
        
      
    }
?>