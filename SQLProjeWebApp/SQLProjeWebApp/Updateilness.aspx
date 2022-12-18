<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="Updateilness.aspx.cs" Inherits="SQLProjeWebApp.Updateilness" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Updateill" runat="server">
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
            <asp:Button ID="ButtonAddill" runat="server" Text="UPDATE" CssClass="btn btn-warning" OnClick="ButtonAddill_Click" />

        </div>

    </form>
</asp:Content>
