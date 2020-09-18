<!-- TABLA -->
<div class="py-5">

    <center class="py-5">
        <h2 class="card-title">Nuestros registros:</h2>
        
    </center>  
    
    <center>
        <form method="post" action="?controller=Director&action=BuscarUsuarios" class="needs-validation " novalidate>
            <div class="form-group col-md-3 py-3">
                <label for="exampleFormControlSelect1">
                  Tipo
                </label>
                <select class="form-control" name="tipo" id="exampleFormControlSelect1">
                  <option>
                    Alumno
                  </option>
                  <option>
                    Maestro
                  </option>
                  
                </select>
            </div>
                  
            <div class="form-row py-6">
                <div class="form-group col-md-2">
                  <label for="exampleFormControlSelect1">
                    Nivel:
                  </label>
                  <select class="form-control" name="nivel" id="exampleFormControlSelect1">
                    {foreach from=$nivel item=$n }
                        <option value="{$n}">{$n}</option>
                    {/foreach}
                  </select>
                </div>
                
                <div class="form-group col-md-3 ">
                  <label for="exampleFormControlSelect1">
                    Grado:
                  </label>
                  <select class="form-control" name="grado" id="exampleFormControlSelect1">
                    {foreach from=$grado item=$g }
                        <option value="{$g}">{$g}</option>
                    {/foreach}
                  </select>
                </div>
                <div class="form-group col-md-2 ">
                  <label for="exampleFormControlSelect1">
                    Carrera:
                  </label>
                  <select class="form-control" name="carrera" id="exampleFormControlSelect1">
                    {foreach from=$carrera item=$c }
                        <option value="{$c}">{$c}</option>
                    {/foreach}
                  </select>
                </div>
                <div class="form-group col-md-2">
                  <label for="exampleFormControlSelect1">
                    Ciclo:
                  </label>
                  <select class="form-control" name="ciclo" id="exampleFormControlSelect1">
                    {foreach from=$ciclo item=$c }
                        <option value="{$c}">{$c}</option>
                    {/foreach}
                  </select>
                </div>
              </div>
                  
                <input type="submit" value="BUSCAR" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"/>
        </form>
    </center>
    
{if isset($usuarios)}

<div class="py-5 container">
    <div class="row">
        <div class="col">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th>CUI</th>
                        <th>Primer Nombre</th>
                        <th>Primer Apellido</th>
                        {if $tipo=='Alumno'}
                            <th>Nivel</th>
                            <th>Grado</th>
                            <th>Carrera</th>
                        {/if}
                        <th width="9%">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    
                        {foreach from=$usuarios item=$us}
                            <tr>
                                <td>{$us['DPI']}</td>
                                <td>{$us['Nombre1']}</td>
                                <td>{$us['Apellido1']}</td>
                            
                            
                            
                                {if $tipo=='Alumno'}
                                    <td>{$n}</td>
                                    <td>{$g}</td>
                                    <td>{$c}</td>
                                {/if}
                                <td>
                             
                                    <a href="?controller=Director&action=EliminarUsuario&id={$us['id_Pro_Usuarios']}&tipo={$tipo}" class=" text-danger "><i class="material-icons">delete_sweep</i></a>
                            
                                    <a href="?controller=Director&action=ActualizarUsuario&id={$us['id_Pro_Usuarios']}&tipo={$tipo}" class="text-success "><i class="material-icons">create</i></a>
                              
                                </td>
                             </tr>
                        {/foreach}
                        
                    	
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
{/if}
<!-- /TABLA -->