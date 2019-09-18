                </div>
                </div>
                </div>
                <div id="barraf">Ferretodo la 44 | © 2019 Developed By: Mateo Nieto Hoyos</div>

                <!-- The Modal -->
                <div class="modal fade" id="mdladdprodut">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Agregando un nuevo producto al inventario</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <!-- Modal body -->
                            <form id="formaddproducto" action="<?php echo base_url(); ?>inventario/registrartp"
                                method="post" enctype="multipart/form-data">
                                <div class="modal-body">

                                    <div class="col-md-12 col-sm-12 col-12 container" style="padding:0">
                                        <div class="col-md-12 col-sm-12 col-12 row">
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <label for="">Nombre del producto</label>
                                                <input type="text" class="form-control" placeholder="Cemento"
                                                    name="nameproducto" id="nameproducto" required>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <label for="">Marca del producto</label>
                                                <input type="text" class="form-control" placeholder="Argos"
                                                    name="marcaproducto" id="marcaproducto" required>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for="">Cantidad</label>
                                                <input type="number" class="form-control" placeholder="75"
                                                    name="cantproducto" id="cantproducto" required>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for="">T.Medidas</label>
                                                <select name="slctmediad" id="slctmediad" class="form-control" required>
                                                    <?php 
                                        foreach($medidas as $tymedi){
                                            echo '<option value="'.$tymedi->id_medida.'">'.$tymedi->tipo_medida.'</option>';
                                        }
                                        ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-12 row">

                                            <div class="col-md-4 col-sm-4 col-4">
                                                <label for="">Valor unitario (Compra)</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" placeholder="65000"
                                                        name="valoru" id="valoru" required>
                                                </div>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for="">IVA</label>
                                                <div class="input-group mb-3">
                                                    <input type="number" class="form-control" placeholder="30"
                                                        name="iva" id="iva" required>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <label for="">Porcentaje de Ganancia</label>
                                                <div class="input-group mb-3">
                                                    <input type="number" class="form-control" placeholder="30"
                                                        name="porganan" id="porganan" required>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for=""></label>
                                                <button type="button" class="btn btn-primary btn-block"
                                                    onclick="javascript:changeProfile()" data-toggle="tooltip"
                                                    data-placement="top" title="Subir la imagen del producto">Subir
                                                    imagen</button>
                                                <input type="file" id="image" name="image" style="display: none;"
                                                    accept="image/*">
                                            </div>


                                        </div>
                                        <div class="col-md-12 col-sm-12 col-12 row">
                                            <div class="col-md-4 col-sm-4 col-4"></div>
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <img id="preview" src="<?php echo base_url(); ?>assets/img/sinimg.png"
                                                    alt="Opps!" width="100%">
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-success">Registrar producto</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <!-- The Modal -->
                <div class="modal fade" id="mdlaaddd">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content" style="-webkit-box-shadow: 0px 0px 13px 2px rgba(0,0,0,0.75);
-moz-box-shadow: 0px 0px 13px 2px rgba(0,0,0,0.75);
box-shadow: 0px 0px 13px 2px rgba(0,0,0,0.75);">

                            <!-- Modal Header -->
                            <div class="modal-header" style="border:none">
                                <h4 class="modal-title">Agregar cantidad</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <div class="col-md-12 col-sm-12 col-12 container" style="padding:0">
                                    <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                                        <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                                        <div class="col-md-8 col-sm-8 col-8">
                                            <label for="">Cantidad agregar</label>
                                            <input id="valaddgra2" type="number" class="form-control" placeholder="30">
                                        </div>


                                    </div>
                                    <br>

                                    <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                                        <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                                        <div class="col-md-8 col-sm-8 col-8">
                                            <button id="btnagrgarprod"
                                                class="btn btn-success form-control">Aplicar</button>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer" style="border:none">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">cerrar</button>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- The Modal -->
                <div class="modal fade" id="mdlmdl">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Modificar producto</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <form id="formmodiproducto" action="<?php echo base_url(); ?>inventario/actu" method="post"
                                enctype="multipart/form-data">
                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="col-md-12 col-sm-12 col-12 container" style="padding:0">
                                        <div class="col-md-12 col-sm-12 col-12 row">
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <input type="text" name="txtix2" id="txtix2" style="display:none">
                                                <label for="">Nombre del producto</label>
                                                <input type="text" class="form-control" placeholder="Cemento"
                                                    name="nameproducto2" id="nameproducto2" required>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <label for="">Marca del producto</label>
                                                <input type="text" class="form-control" placeholder="Argos"
                                                    name="marcaproducto2" id="marcaproducto2" required>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for="">Cantidad</label>
                                                <input type="number" class="form-control" placeholder="75"
                                                    name="cantproducto2" id="cantproducto2" required readonly
                                                    style="cursor:pointer">
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for="">T.Medidas</label>
                                                <select name="slctmediad2" id="slctmediad2" class="form-control"
                                                    required>
                                                    <?php 
                                        foreach($medidas as $tymedi){
                                            echo '<option value="'.$tymedi->id_medida.'">'.$tymedi->tipo_medida.'</option>';
                                        }
                                        ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-12 row">

                                            <div class="col-md-4 col-sm-4 col-4">
                                                <label for="">Valor unitario (Compra)</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" placeholder="65000"
                                                        name="valoru2" id="valoru2" required>
                                                </div>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for="">IVA</label>
                                                <div class="input-group mb-3">
                                                    <input type="number" class="form-control" placeholder="30"
                                                        name="iva2" id="iva2" required>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <label for="">Porcentaje de Ganancia</label>
                                                <div class="input-group mb-3">
                                                    <input type="number" class="form-control" placeholder="30"
                                                        name="porganan2" id="porganan2" required>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-2">
                                                <label for=""></label>
                                                <button type="button" class="btn btn-primary btn-block"
                                                    onclick="javascript:changeProfile2()" data-toggle="tooltip"
                                                    data-placement="top" title="Subir la imagen del producto">Subir
                                                    imagen</button>
                                                <input type="file" id="matle" name="matle" style="display: none;"
                                                    accept="image/*">
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-12 row">
                                            <div class="col-md-4 col-sm-4 col-4"></div>
                                            <div class="col-md-4 col-sm-4 col-4">
                                                <img id="preview2" src="<?php echo base_url(); ?>assets/img/sinimg.png"
                                                    alt="Opps!" width="100%">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                    <button type="submit" class="btn btn-success">Actualizar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>



                </body>

                </html>