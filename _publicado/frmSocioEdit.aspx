﻿<%@ Page Language="vb" AutoEventWireup="false" MaintainScrollPositionOnPostback="true" MasterPageFile="~/ContableWeb.Master" CodeBehind="frmSocioEdit.aspx.vb" Inherits="ContableWeb.frmSocioEdit" title="Socios" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTitulo" runat="server">Información de socio</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCuerpo" runat="server">


<div class="contenttitle"><h2 class="form"><span>Socio</span></h2></div>
<br />
<form runat="server" id="frmCuentaEdit" class="stdform" action="" method="post">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"/>
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Información General</a></li>
            <li><a href="#tabs-2">Datos Administrativos</a></li>
        </ul>
        <div id="tabs-1">
            <label>Nombre</label>

            <asp:CalendarExtender ID="txtFechaNacimientoExt" TargetControlID="txtFechaNacimiento" runat="server" FirstDayOfWeek="Monday" Format="dd/MM/yyyy" />

            <asp:UpdatePanel ID="up1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="txtFechaNacimiento" EventName="TextChanged" />
                    </Triggers>
                <ContentTemplate>
                    <label>Categoría correspondiente</label>
                    <span class="field"><asp:TextBox ID="txtCategoria" runat="server" CssClass="smallinput" MaxLength="100" ReadOnly="true"></asp:TextBox></span>
                </ContentTemplate>
            </asp:UpdatePanel>
            
            <label>Es profesional</label>
            <label>Clasificación Single</label>
            <label>Clasificación Dobles</label>
            
            
            <label>Tipo de documento</label>
            <label>Número de documento</label>

            <label>Sexo</label>
            <label>Estado Civil</label>
            
            <label>Nacionalidad</label>
            <label>Provincia</label>

        </div>
        <div id="tabs-2">

            <label>Federación</label>
            <label>Pertenece a</label>
            <label>Fecha de Ingreso</label>
            <asp:CalendarExtender ID="txtFechaIngresoExt" TargetControlID="txtFechaIngreso" runat="server" FirstDayOfWeek="Monday" Format="dd/MM/yyyy" />
            <label>Estado</label>
        </div>
    </div>
    <br />
        <p><asp:Label ID="lblErrorForm" runat="server" Text=""></asp:Label></p>
    </div>
        <asp:Button ID="cmdGuardar" runat="server" Text="Guardar" CssClass="accept"/>
        <asp:Button ID="cmdCancelar" runat="server" Text="Cancelar" CssClass="reset" />
    </p>
    
    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
        TargetControlID="txtClub"   
        ServiceMethod="VistaClub"
        ServicePath="servicios.asmx"
        MinimumPrefixLength="2" 
        CompletionListItemCssClass="select"
        CompletionInterval="100" />

    <asp:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
        TargetControlID="txtFederacion"   
        ServiceMethod="VistaFederacion"
        ServicePath="servicios.asmx"
        MinimumPrefixLength="2" 
        CompletionListItemCssClass="select"
        CompletionInterval="100" />
        
</form>

</asp:Content>