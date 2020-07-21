<?php
    class Home
    {
        public function Inicio()
        {
            $smarty = new Smarty();
            $smarty->assign('title','Colegio');
            $smarty->display('Default.tpl');
        }
    }
    
?>