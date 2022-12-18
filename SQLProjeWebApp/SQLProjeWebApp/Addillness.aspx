<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="Addillness.aspx.cs" Inherits="SQLProjeWebApp.Addillness" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="FormAddill" runat="server">
    <div class="form-group">
        <div>
            <asp:Label for="txtAddill" runat="server" Text="Label">Enter İllness Name</asp:Label>
            <asp:TextBox ID="txtAddill" runat="server" cssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="txtSymp" runat="server" Text="Label">Enter Symptoms</asp:Label>
            <asp:TextBox ID="txtSymp" runat="server" cssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Buttonill" runat="server" cssClass="btn btn-warning" Text="SAVE" OnClick="Buttonill_Click" />


    </div>

</form>
</asp:Content>
