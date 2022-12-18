<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="AddCovPerson.aspx.cs" Inherits="SQLProjeWebApp.AddCovPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="Form1CovP" runat="server">
    <div class="form-group">
        <div>
            <asp:Label for="txtCovPerson_ID" runat="server" Text="Label">Covid Person ID</asp:Label>
            <asp:TextBox ID="txtCovPerson_ID" runat="server" cssclass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="DropDownList1Person_ID" runat="server">Personnel ID</asp:Label>
            <asp:DropDownList ID="DropDownList1Person_ID" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label for="DropDownList1Vacine" runat="server">Vaccine ID</asp:Label>
            <asp:DropDownList ID="DropDownList1Vacine" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label for="TextBox1Symptoms" runat="server" Text="Label">Symptoms</asp:Label>
            <asp:TextBox ID="TextBox1Symptoms" runat="server" cssclass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextBox2Positive" runat="server" Text="Label">Positive Date</asp:Label>
            <asp:TextBox ID="TextBox2Positive" runat="server" cssclass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TextBox3Negative" runat="server" Text="Label">Negative Date</asp:Label>
            <asp:TextBox ID="TextBox3Negative" runat="server" cssclass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button2CovPerson" runat="server" Text="Save" CssClass="btn btn-warning" OnClick="Button2CovPerson_Click" />
        </div>
    </div>

</form>
</asp:Content>
