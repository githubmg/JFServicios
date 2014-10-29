﻿<%@ Page Title="" MaintainScrollPositionOnPostback="true" Language="vb" AutoEventWireup="false" MasterPageFile="~/ContableWeb.Master" CodeBehind="frmProveedorEdit.aspx.vb" Inherits="ContableWeb.frmProveedorEdit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentTitulo" runat="server">Información del proveedor</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCuerpo" runat="server">

<div class="contenttitle"><h2 class="form"><span>Proveedor</span></h2></div>
<br />
<form runat="server" id="frmCuentaEdit" class="stdform" action="" method="post">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"/>

<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Información General</a></li>
        <li><a href="#tabs-2">Datos Comerciales</a></li>
        <li><a href="#tabs-3">Retenciones</a></li>
        <li><a href="#tabs-4">Contable</a></li>
    </ul>
    <div id="tabs-1">
        <label>Razon Social</label>
        <label>Rubro</label>
    </div>
    <div id="tabs-2">
        <label>Condición IVA</label>
        <label>CUIT</label>

    </div>
    <div id="tabs-3">
        <label>% Ret. Seguridad Social</label>
        <label>Resol. General Seg. Social</label>
        <label>Ganancias</label>
        <label>% Ret. IIBB</label>
        <label>Número de IIBB</label>
        <label>Retiene Iva</label>
            <span class="field"><asp:TextBox ID="txtCuentaResultado" runat="server" CssClass="mediuminput"></asp:TextBox></span>
            <label>Código de cuenta patrimonial</label>
            <span class="field"><asp:TextBox ID="txtCuentaPatrimonial" runat="server" CssClass="mediuminput"></asp:TextBox></span>

                TargetControlID="txtCuentaResultado"   
                ServiceMethod="VistaCuenta"
                ServicePath="servicios.asmx"
                MinimumPrefixLength="2" 
                CompletionListItemCssClass="select"
                CompletionInterval="100" />
            <asp:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
                TargetControlID="txtCuentaPatrimonial"   
                ServiceMethod="VistaCuenta"
                ServicePath="servicios.asmx"
                MinimumPrefixLength="2" 
                CompletionListItemCssClass="select"
                CompletionInterval="100" />

<br />
    <p><asp:Label ID="lblErrorForm" runat="server" Text=""></asp:Label></p>
</div>
    <asp:Button ID="cmdGuardar" runat="server" Text="Guardar" CssClass="accept"/>
    <asp:Button ID="cmdCancelar" runat="server" Text="Cancelar" CssClass="reset" />
</p>


</asp:Content>