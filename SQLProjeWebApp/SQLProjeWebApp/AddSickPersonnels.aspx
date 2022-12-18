<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="AddSickPersonnels.aspx.cs" Inherits="SQLProjeWebApp.AddSickPersonnels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="DropDownList1PersonID" runat="server">Personnel ID</asp:Label>
                <asp:DropDownList ID="DropDownList1PersonID" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1illID" runat="server">illness ID</asp:Label>
                <asp:DropDownList ID="DropDownList1illID" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="TextBox1illDate" runat="server">illness Date</asp:Label>
                <asp:TextBox ID="TextBox1illDate" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1MedicamentID" runat="server">Medicament ID</asp:Label>
                <asp:DropDownList ID="DropDownList1MedicamentID" runat="server" CssClass="form-control"></asp:DropDownList>
                
            </div>
            <br />
            <div>
                <asp:Label for="txtMedDos" runat="server">Medicament Dosage</asp:Label>
                <asp:TextBox ID="txtMedDos" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBox1SickPerson_ID" runat="server">Sick Personnel ID</asp:Label>
                <asp:TextBox ID="TextBox1SickPerson_ID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            
            
            <asp:Button runat="server" Text="Save" CssClass="btn btn-warning" OnClick="Unnamed6_Click" />
            
        </div>

    </form>

</asp:Content>
