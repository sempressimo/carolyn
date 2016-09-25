<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient_record_evaluation.aspx.cs" Inherits="Carolyn.patient_record_evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

    <div style="background-color: white !important" class="jumbotron">

    <h2><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Record del Paciente: Evaluación</h2>

    <asp:ValidationSummary ID="ValidationSummary1" CssClass="" runat="server" />
    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>

        <h3><span class="label label-warning">Manejo de Emergencias</span></h3>

        <div class="container-fluid">
            <div class="row">    
                <div class="col-lg-12">

                    <div class="form-group">
                    <label>En caso de emergencia, se notificará a</label>
                    <input ID="txtEmergencyFullname" runat="server" class="form-control" placeholder="Nombre y apellidos..."/>
                    </div>

                    <div class="form-group">
                    <label>Relación</label>
                    <input ID="txtEmergencyRelationship" runat="server" class="form-control" placeholder="Madre, tio, abuelo, etc."/>
                    </div>

                    <div class="form-group">
                    <label>Teléfono(s)</label>
                    <input ID="txtEmergencyPhone" runat="server" class="form-control" type="text" placeholder="###-###-####"/>
                    </div>

                </div>
            </div>
        </div>

        <h3><span class="label label-warning">Historial Médico</span></h3>

        <label>Padece o ha padecido de:</label><br/>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-4">
                    <asp:CheckBox ID="cbAnemia" CssClass="form-control" runat="server" Text="Anemia" />
                    <br/>
                    <asp:CheckBox ID="cbAnorexia" CssClass="form-control" runat="server" Text="Anorexia" />
                    <br/>
                    <asp:CheckBox ID="cbBulimia" CssClass="form-control" runat="server" Text="Bulimia" />
                    <br/>
                    <asp:CheckBox ID="cbArtritis" CssClass="form-control" runat="server" Text="Artritis" />
                    <br/>
                    <asp:CheckBox ID="cbAsma" CssClass="form-control" runat="server" Text="Asma" />
                    <br/>
                    <asp:CheckBox ID="cbDepresion" CssClass="form-control" runat="server" Text="Depresión" />
                    <br/>
                    <asp:CheckBox ID="cbDiabetes" CssClass="form-control" runat="server" Text="Diabetes" />
                    <br/>
                    <asp:CheckBox ID="cbHigado" CssClass="form-control" runat="server" Text="Hígado" />
                    <br/>
                    <asp:CheckBox ID="cbHipercolesterolemia" CssClass="form-control" runat="server" Text="Hipercolesterolemia (colesterol alto)" />
                    <br/>
                    <asp:CheckBox ID="cbHiperlipidemias" CssClass="form-control" runat="server" Text="Hiperlipidemias (triglicéridos altos)" />
                    <br/>
                    <asp:CheckBox ID="cbHighBP" CssClass="form-control" runat="server" Text="Hipertensión (presión alta)" />
                    <br/>
                </div>

                <div class="col-lg-4">
                    <asp:CheckBox ID="cbCancer" CssClass="form-control" runat="server" Text="Cancer:" />
                    <br/>
                    <asp:CheckBox ID="cbCardiovascular"  CssClass="form-control" runat="server" Text="Condiciones cardiovasculares:" />
                    <br/>
                    <asp:CheckBox ID="cbGastro" CssClass="form-control" runat="server" Text="Condiciones Gastrointestinales:" />
                    <br/>
                    <asp:CheckBox ID="cbRenal" CssClass="form-control" runat="server" Text="Condiciones Renales:" />
                    <br/>
                    <asp:CheckBox ID="cbRespiratory" CssClass="form-control" runat="server" Text="Condiciones respiratorias:" />
                    <br/>
                    <asp:CheckBox ID="cbHipoglucemia" CssClass="form-control" runat="server" Text="Hipoglucemia" />
                    <br/>
                    <asp:CheckBox ID="cbMareos" CssClass="form-control" runat="server" Text="Mareos" />
                    <br/>
                    <asp:CheckBox ID="cbMigrana" CssClass="form-control" runat="server" Text="Migraña" />
                    <br/>
                    <asp:CheckBox ID="cbTiroide" CssClass="form-control" runat="server" Text="Problema de la tiroide" />
                    <br/>
                    <asp:CheckBox ID="cbVertigo" CssClass="form-control" runat="server" Text="Vértigo" />
                    <br/>
                    <asp:CheckBox ID="cbOther" CssClass="form-control" runat="server" Text="Otros:" />
                    <br/>
                </div>

                <div class="col-lg-4">
                    <input ID="txtCancerOther" runat="server" class="form-control" placeholder="(Cancer, detalles...)"/>
                    <br/>
                    <input ID="txtCardio" runat="server" class="form-control" placeholder="(Cardio, detalles...)"/>
                    <br/>
                    <input ID="txtGastro" runat="server" class="form-control" placeholder="(Gastro, detalles...)"/>
                    <br/>
                    <input ID="txtRenal" runat="server" class="form-control" placeholder="(Renales, detalles...)"/>
                    <br/>
                    <input ID="txtRespiratory" runat="server" class="form-control" placeholder="(Respiratorias, detalles...)"/>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <asp:TextBox ID="txtOther" CssClass="form-control" runat="server"></asp:TextBox>
                    <br/>
                </div>

            </div> <!-- row -->
        </div> <!-- container-fluid -->

        <h3><span class="label label-warning">Cirugías</span></h3>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                    <label>(1)</label>
                    <input ID="txtSurgery1" runat="server" class="form-control" placeholder=""/>
                    </div>
                    <div class="form-group">
                    <label>(2)</label>
                    <input ID="txtSurgery2" runat="server" class="form-control" placeholder=""/>
                    </div>
                    <div class="form-group">
                    <label>(3)</label>
                    <input ID="txtSurgery3" runat="server" class="form-control" placeholder=""/>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                    <label>Fecha (1)</label>
                    <input ID="txtSurgery1Date" runat="server" class="form-control" placeholder="mm/dd/aaaa"/>
                    </div>
                    <div class="form-group">
                    <label>Fecha (2)</label>
                    <input ID="txtSurgery2Date" runat="server" class="form-control" placeholder="mm/dd/aaaa"/>
                    </div>
                    <div class="form-group">
                    <label>Fecha (3)</label>
                    <input ID="txtSurgery3Date" runat="server" class="form-control" placeholder="mm/dd/aaaa"/>
                    </div>
                </div>
            </div>
        </div>

        <h3><span class="label label-warning">Medicamentos y Suplementos</span></h3>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-6">

                    <div class="form-group">
                    <label>Medicamentos que utiliza actualmente:</label>
                    <input ID="txtDrugs" runat="server" class="form-control" placeholder="Separados por comas"/>
                    </div>

                    <div class="form-group">
                    <label>Suplementos vitaminas/minerales:</label>
                    <input ID="txtVitamins" runat="server" class="form-control" placeholder="Separados por comas"/>
                    </div>

                </div>
                <div class="col-lg-6">
                    
                    <div class="form-group">
                    <label>Alergia a medicamentos:</label>
                    <input ID="txtAlergies" runat="server" class="form-control" placeholder="Separados por comas"/>
                    </div>

                    <div class="form-group">
                    <label>Alergia a alimentos:</label>
                    <input ID="txtFoodAlergies" runat="server" class="form-control" placeholder="Separados por comas"/>
                    </div>
                
                </div>
            </div>
        </div>

        <h3><span class="label label-warning">Historial Médico Familiar</span></h3>

        <label>Alguien de su familia padece de:</label><br/>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-4">
                    <asp:CheckBox ID="cbFamAnemia" CssClass="form-control" runat="server" Text="Anemia" />
                    <br/>
                    <asp:CheckBox ID="cbFamAnorexia" CssClass="form-control" runat="server" Text="Anorexia" />
                    <br/>
                    <asp:CheckBox ID="cbFamBulimia" CssClass="form-control" runat="server" Text="Bulimia" />
                    <br/>
                    <asp:CheckBox ID="cbFamArtritis" CssClass="form-control" runat="server" Text="Artritis" />
                    <br/>
                    <asp:CheckBox ID="cbFamAsma" CssClass="form-control" runat="server" Text="Asma" />
                    <br/>
                    <asp:CheckBox ID="cbFamDespresion" CssClass="form-control" runat="server" Text="Depresión" />
                    <br/>
                    <asp:CheckBox ID="cbFamDiabetes" CssClass="form-control" runat="server" Text="Diabetes" />
                    <br/>
                    <asp:CheckBox ID="cbFamHigado" CssClass="form-control" runat="server" Text="Hígado" />
                    <br/>
                    <asp:CheckBox ID="cbFamHighCol" CssClass="form-control" runat="server" Text="Hipercolesterolemia (colesterol alto)" />
                    <br/>
                    <asp:CheckBox ID="cbFamHighTri" CssClass="form-control" runat="server" Text="Hiperlipidemias (triglicéridos altos)" />
                    <br/>
                    <asp:CheckBox ID="cbFamHighBP" CssClass="form-control" runat="server" Text="Hipertensión (presión alta)" />
                    <br/>
                </div>

                <div class="col-lg-4">
                    <asp:CheckBox ID="cbFamCancer" CssClass="form-control" runat="server" Text="Cancer:" />
                    <br/>
                    <asp:CheckBox ID="cbFamCardio"  CssClass="form-control" runat="server" Text="Condiciones cardiovasculares:" />
                    <br/>
                    <asp:CheckBox ID="cbFamGastro" CssClass="form-control" runat="server" Text="Condiciones Gastrointestinales:" />
                    <br/>
                    <asp:CheckBox ID="cbFamRenal" CssClass="form-control" runat="server" Text="Condiciones Renales:" />
                    <br/>
                    <asp:CheckBox ID="cbFamRespiratory" CssClass="form-control" runat="server" Text="Condiciones respiratorias:" />
                    <br/>
                    <asp:CheckBox ID="cbFamHipoglucemia" CssClass="form-control" runat="server" Text="Hipoglucemia" />
                    <br/>
                    <asp:CheckBox ID="cbFamDizziness" CssClass="form-control" runat="server" Text="Mareos" />
                    <br/>
                    <asp:CheckBox ID="cbFamMigraine" CssClass="form-control" runat="server" Text="Migraña" />
                    <br/>
                    <asp:CheckBox ID="cbFamThyriod" CssClass="form-control" runat="server" Text="Problema de la tiroide" />
                    <br/>
                    <asp:CheckBox ID="cbFamVertigo" CssClass="form-control" runat="server" Text="Vértigo" />
                    <br/>
                    <asp:CheckBox ID="cbFamOther" CssClass="form-control" runat="server" Text="Otros:" />
                    <br/>
                </div>

                <div class="col-lg-4">
                    <input ID="txtFamCancer" runat="server" class="form-control" placeholder="(Cancer, detalles...)"/>
                    <br/>
                    <input ID="txtFamCardio" runat="server" class="form-control" placeholder="(Cardio, detalles...)"/>
                    <br/>
                    <input ID="txtFamGastro" runat="server" class="form-control" placeholder="(Gastro, detalles...)"/>
                    <br/>
                    <input ID="txtFamRenal" runat="server" class="form-control" placeholder="(Renales, detalles...)"/>
                    <br/>
                    <input ID="txtFamRespiratory" runat="server" class="form-control" placeholder="(Respiratorias, detalles...)"/>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <asp:TextBox ID="txtFamOther" CssClass="form-control" runat="server"></asp:TextBox>
                    <br/>
                </div>

            </div> <!-- row -->
        </div> <!-- container-fluid -->

        <h3><span class="label label-warning">Estilo de Vida</span></h3>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-4">
                    <asp:CheckBox ID="cbAlcoholUse" CssClass="form-control" runat="server" Text="Alcohol" />
                    <br/>
                    <asp:CheckBox ID="cbCigarretesUse" CssClass="form-control" runat="server" Text="Cigarrillos" />
                    <br/>
                    <asp:CheckBox ID="cbPhysicalActivityUse" CssClass="form-control" runat="server" Text="Cigarrillos" />
                    <br/>
                </div>

                <div class="col-lg-4">
                    <input ID="txtAlcoholFreq" runat="server" class="form-control" placeholder="Frecuencia"/>
                    <br/>
                    <input ID="txtCigarretesFreq" runat="server" class="form-control" placeholder="Frecuencia"/>
                    <br/>
                    <input ID="txtPhysicalActivity" runat="server" class="form-control" placeholder="Frecuencia"/>
                    <br/>
                </div>

                <div class="col-lg-4">
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <input ID="txtPhysicalActivityDescription" runat="server" class="form-control" placeholder="Tipo" />
                    <br/>
                </div>

            </div>
        </div>

        <h3><span class="label label-warning">Historial Nutricional</span></h3>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-6">
                    <div class="form-group">
                    <label>¿Cuántas comidas hace al día?</label>
                    <input ID="Text1" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>
                </div>

                <div class="col-lg-6">
                        <div class="form-group">
                        <label>¿Cuántas meriendas hace al día?</label>
                        <input ID="Text2" runat="server" class="form-control" placeholder="Cantidad"/>
                        </div>
                </div>

            </div>
        </div>

        <label>¿Cuántas veces a la semana consume las siguientes comidas fuera de la casa?</label><br/>

        <label>Cuando come fuera de la casa, ¿dónde usualmente lo hace?</label><br/>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-6">
                    
                    <asp:CheckBox ID="cbNutHxFastFood" CssClass="form-control" runat="server" Text="Restaurante de comida rápida" />
                    <br/>
                    <asp:CheckBox ID="cbNutCafeteria" CssClass="form-control" runat="server" Text="Cafetería" />
                    <br/>
                    <asp:CheckBox ID="cbNutHxCafeteria" CssClass="form-control" runat="server" Text="Cafetería" />
                    <br/>
                    <asp:CheckBox ID="cbNutHxRestaurant" CssClass="form-control" runat="server" Text="Restaurante" />
                    <br/>
                    <asp:CheckBox ID="cbNutHxOther" CssClass="form-control" runat="server" Text="Other:" />
                    <br/>
                </div>

                <div class="col-lg-6">
                    
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <span class="form-control">&nbsp;</span>
                    <br/>
                    <input ID="txtOutOfHomeOther" runat="server" class="form-control" placeholder="Cantidad"/>

                </div>

            </div>
        </div>
  
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-6">

                    <label>¿Alrededor de cuántas frutas o jugo de frutas consume al día?</label><br/>

                    <div class="form-group">
                    <label>Fruta fresca</label>
                    <input ID="txtQtyFreshFruit" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Jugo de frutas</label>
                    <input ID="txtQtyFruitJuice" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                </div>

                <div class="col-lg-6">
                
                    <label>¿Alrededor de cuántos servicios de vegetales se come al día?</label><br/>

                    <div class="form-group">
                    <label>Vegetales</label>
                    <input ID="txtVegetablesQty" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                </div>

            </div>
        </div>

        <label>¿Cuántas veces a la semana consume?</label><br/>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-6">

                    <div class="form-group">
                    <label>Pollo o pavo</label>
                    <input ID="txtPolloQty" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Carne</label>
                    <input ID="txtMeatQty" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                </div>
                <div class="col-lg-6">
                    
                    <div class="form-group">
                    <label>Pescado</label>
                    <input ID="txtFishQty" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Mariscos</label>
                    <input ID="txtSeaFoodQty" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>
                
                </div>
            </div>
        </div>

        <label>¿Qué tipo de bebidas usualmente consume?/ ¿Cuántos servicios al día consume?</label><br/>

        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-6">

                    <div class="form-group">
                    <label>Agua</label>
                    <input ID="Text3" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Leche Entera</label>
                    <input ID="Text4" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Jugo</label>
                    <input ID="Text7" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Leche Baja en Grasa</label>
                    <input ID="Text8" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Leche Sin Grasa</label>
                    <input ID="Text9" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Refresco</label>
                    <input ID="Text10" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Refresco de Dieta</label>
                    <input ID="Text11" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                </div>
                <div class="col-lg-6">
                    
                    <div class="form-group">
                    <label>Cerveza</label>
                    <input ID="Text5" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Té</label>
                    <input ID="Text6" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Té con azúcar</label>
                    <input ID="Text12" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Licor</label>
                    <input ID="Text13" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Bebidas electrolíticas</label>
                    <input ID="Text14" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>

                    <div class="form-group">
                    <label>Otros</label>
                    <input ID="Text15" runat="server" class="form-control" placeholder="Cantidad"/>
                    </div>
                
                </div>
            </div>
        </div>

        <div class="form-group">
        <label>Razón por la que solicita servicios nutricionales:</label>
        <textarea ID="txtReasonForService" cols="1" rows="3" runat="server" class="form-control" placeholder="Cantidad"/>
        </div>

        <br/>

        <div class="form-group pull-right">
            <asp:LinkButton ID="lbSave" runat="server" onclick="lbSave_Click" CssClass="btn btn-primary">Actualizar</asp:LinkButton>
            <asp:LinkButton ID="lbCancel" runat="server" CssClass="btn btn-default" OnClick="lbCancel_Click">Cancel</asp:LinkButton>
        </div>

        <br/>

    </div>

</form>

</asp:Content>
