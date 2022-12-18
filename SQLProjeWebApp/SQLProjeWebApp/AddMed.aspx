<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="AddMed.aspx.cs" Inherits="SQLProjeWebApp.AddMed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="Form3" runat="server">
     
    <div class="form-group">
        <div>
            <asp:Label for="txtMedt" runat="server" Text="Label">EnterMedicament Name</asp:Label>
            <asp:TextBox ID="txtMed" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
            <asp:Button ID="Button12" runat="server" CssClass="btn btn-warning" Text="Save" OnClick="Button12_Click" />

    </div>

</form>
</asp:Content>
