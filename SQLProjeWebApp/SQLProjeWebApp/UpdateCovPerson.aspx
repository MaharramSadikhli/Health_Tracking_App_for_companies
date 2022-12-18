<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="UpdateCovPerson.aspx.cs" Inherits="SQLProjeWebApp.UpdateCovPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FormCov" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TextBoxCovPerID" runat="server">Covid Personnel ID</asp:Label>
                <asp:TextBox ID="TextBoxCovPerID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownListPersonnel_ID" runat="server">Personnel_ID</asp:Label>
                <asp:DropDownList ID="DropDownListPersonnel_ID" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1Vaccine" runat="server" Text="Label">Vaccine_ID</asp:Label>
                <asp:DropDownList ID="DropDownList1Vaccine" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="TextBox1Symptoms" runat="server" Text="Label">Symptoms</asp:Label>
                <asp:TextBox ID="TextBox1Symptoms" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBox1Positive" runat="server" Text="Label">Positive Date</asp:Label>
                <asp:TextBox ID="TextBox1Positive" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBox1Negative" runat="server" Text="Label">Negative Date</asp:Label>
                <asp:TextBox ID="TextBox1Negative" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="ButtonCov" runat="server" Text="SAVE" CssClass="btn btn-warning" OnClick="ButtonCov_Click" />
            </div>
        </div>

    </form>
</asp:Content>
