<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient_record_evaluation.aspx.cs" Inherits="Carolyn.patient_record_evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Record del Paciente: Evaluación</h1>

    <h3>MANEJO DE EMERGENCIAS</h3>

    <table style="width: 100%;">
        <tr>
            <td>
                En caso de emergencia, se notificará a:</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Relación:
            </td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            <td>
                Teléfono(s):</td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <h3>HISTORIAL MEDICO</h3>

    <p>Padece o ha padecido de:</p>

    <table style="width: 100%;">
        <tr>
            <td>
                <asp:CheckBox ID="cbAnemia" runat="server" Text="Anemia" />
            </td>
            <td>
                <asp:CheckBox ID="cbCancer" runat="server" Text="Cancer:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbAnorexia" runat="server" Text="Anorexia" />
            </td>
            <td>
                <asp:CheckBox ID="cbCardiovascular" runat="server" 
                    Text="Condiciones cardiovasculares:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbBulimia" runat="server" Text="Bulimia" />
            </td>
            <td>
                <asp:CheckBox ID="cbGastro" runat="server" 
                    Text="Condiciones Gastrointestinales:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbArtritis" runat="server" Text="Artritis" />
            </td>
            <td>
                <asp:CheckBox ID="cbRenal" runat="server" Text="Condiciones Renales:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbAsma" runat="server" Text="Asma" />
            </td>
            <td>
                <asp:CheckBox ID="cbRespiratory" runat="server" 
                    Text="Condiciones respiratorias:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbDepresion" runat="server" Text="Depresión" />
            </td>
            <td>
                <asp:CheckBox ID="cbHipoglucemia" runat="server" Text="Hipoglucemia" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbDiabetes" runat="server" Text="Diabetes" />
            </td>
            <td>
                <asp:CheckBox ID="cbMareos" runat="server" Text="Mareos" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbHigado" runat="server" Text="Hígado" />
            </td>
            <td>
                <asp:CheckBox ID="cbMigrana" runat="server" Text="Migraña" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbHipercolesterolemia" runat="server" 
                    Text="Hipercolesterolemia (colesterol alto)" />
            </td>
            <td>
                <asp:CheckBox ID="cbTiroide" runat="server" Text="Problema de la tiroide" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbHiperlipidemias" runat="server" 
                    Text="Hiperlipidemias (triglicéridos altos)" />
            </td>
            <td>
                <asp:CheckBox ID="cbVertigo" runat="server" Text="Vértigo" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbHigado0" runat="server" 
                    Text="Hipertensión (presión alta)" />
            </td>
            <td>
                <asp:CheckBox ID="cbOther" runat="server" Text="Otros:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <h3>Cirugías</h3>

    <table style="width: 100%;">
        <tr>
            <td>
                1.
                &nbsp;<asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
            </td>
            <td>
                Fecha:
                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                2.
                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            </td>
            <td>
                Fecha:
                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                3.
                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            </td>
            <td>
                Fecha:
                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

    <h3>Medicamentos y Suplementos</h3>

    <table style="width: 100%;">
        <tr>
            <td>
                Medicamentos que utiliza actualmente:</td>
            <td>
                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Suplementos vitaminas/minerales:
            </td>
            <td>
                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Alergia a medicamentos:</td>
            <td>
                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Alergia a alimentos:
            </td>
            <td>
                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

    <h3>HISTORIAL MÉDICO FAMILIAR</h3>

    <p>Alguien de su familia padece de:</p>

    <table style="width: 100%;">
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Anemia" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Cancer:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Anorexia" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" 
                    Text="Condiciones cardiovasculares:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox5" runat="server" Text="Bulimia" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox6" runat="server" 
                    Text="Condiciones Gastrointestinales:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox7" runat="server" Text="Artritis" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox8" runat="server" Text="Condiciones Renales:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox9" runat="server" Text="Asma" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox10" runat="server" 
                    Text="Condiciones respiratorias:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox11" runat="server" Text="Depresión" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox12" runat="server" Text="Hipoglucemia" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox13" runat="server" Text="Diabetes" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox14" runat="server" Text="Mareos" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox15" runat="server" Text="Hígado" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox16" runat="server" Text="Migraña" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox17" runat="server" 
                    Text="Hipercolesterolemia (colesterol alto)" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox18" runat="server" Text="Problema de la tiroide" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox19" runat="server" 
                    Text="Hiperlipidemias (triglicéridos altos)" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox20" runat="server" Text="Vértigo" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox21" runat="server" 
                    Text="Hipertensión (presión alta)" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox22" runat="server" Text="Otros:" />
            </td>
            <td>
                <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <h3>ESTILO DE VIDA</h3>

    <table style="width: 100%;">
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox23" runat="server" Text="Alcohol" />
            </td>
            <td>
                Frequencia: 
                <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
            </td>
            <td>
               &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox24" runat="server" Text="Cigarrillos" />
            </td>
            <td>
                Frequencia: 
                <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
            </td>
            <td>
               &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox25" runat="server" Text="Actividad física" />
            </td>
            <td>
                Frequencia: 
                <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
            </td>
            <td>
                Tipo: 
                <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <h3>HISTORIAL NUTRICIONAL</h3>

    <table style="width: 100%;">
        <tr>
            <td>
                ¿Cuántas comidas hace al día?
            </td>
            <td>
                <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                ¿Cuántas meriendas hace al día?
            </td>
            <td>
                <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

    <p>¿Cuántas veces a la semana consume las siguientes comidas fuera de la casa?</p>

        <table style="width: 100%;">
        <tr>
            <td>
                Desayuno
            </td>
            <td>
                <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Almuerzo
            </td>
            <td>
                <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Cena
            </td>
            <td>
                <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

    <p>Cuando come fuera de la casa, ¿dónde usualmente lo hace?</p>
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:CheckBox ID="cbNutHxFastFood" runat="server" 
                    Text="Restaurante de comida rápida" />
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbNutHxCafeteria" runat="server" Text="Cafetería" />
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbNutHxRestaurant" runat="server" Text="Restaurante" />
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cbNutHxOther" runat="server" Text="Other:" />
&nbsp;<asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <p>¿Alrededor de cuántas frutas o jugo de frutas consume al día?</p>
    
    <table style="width: 100%;">
        <tr>
            <td>
                Fruta fresca</td>
            <td>
                <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Jugo de frutas</td>
            <td>
                <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

    <p>¿Alrededor de cuántos servicios de vegetales se come al día?
                <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
            </p>

    <p>¿Cuántas veces a la semana consume?</p>

    <table style="width: 100%;">
        <tr>
            <td>
                Pollo o Pavo
                </td>
            <td>
                <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
            </td>
            <td>
                Carne
                </td>
            <td>
                <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Pescado
                </td>
            <td>
                <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
            </td>
            <td>
                Mariscos
                </td>
            <td>
                <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

    <p>¿Qué tipo de bebidas usualmente consume?/ ¿Cuántos servicios al día consume?</p>

    <table style="width: 100%;">
        <tr>
            <td>
                Agua
                </td>
            <td>
                <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
            </td>
            <td>
                Leche entera</td>
            <td>
                <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Jugo
                </td>
            <td>
                <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
            </td>
            <td>
                Leche baja en grasa</td>
            <td>
                <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Refresco</td>
            <td>
                <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
            </td>
            <td>
                Leche sin grasa</td>
            <td>
                <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Refresco de dieta</td>
            <td>
                <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
            </td>
            <td>
                Cerverza</td>
            <td>
                <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                Té</td>
            <td>
                <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                    </td>
            <td>
                Vino</td>
            <td>
                <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                Té con azúcar</td>
            <td>
                <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                    </td>
            <td>
                Licor</td>
            <td>
                <asp:TextBox ID="TextBox67" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                Bebidas electrolíticas</td>
            <td>
                <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                    </td>
            <td>
                Otros:</td>
            <td>
                <asp:TextBox ID="TextBox68" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <p>Razón por la que solicita servicios nutricionales:</p>
    <p>
                <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                    </p>

</asp:Content>
