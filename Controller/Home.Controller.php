<?php
    class Home
    {
        public function Inicio()
        {
            $smarty = new Smarty();
            $smarty->display('p.tpl');
        }
    }
    
?>