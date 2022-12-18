<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="UpdatePersonnels.aspx.cs" Inherits="SQLProjeWebApp.UpdatePersonnels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <form id="Form1" runat="server">
        <div class="form-group">

             <div>
                <asp:Label for="TextBox1Per_ID" runat="server">Personnel_ID</asp:Label>
                <asp:TextBox ID="TextBox1Per_ID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1PosNO" runat="server">Position_ID</asp:Label>
                <asp:DropDownList ID="DropDownList1PosNO" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1GRAD" runat="server">Graduation_ID</asp:Label>
                <asp:DropDownList ID="DropDownList1GRAD" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1UNI" runat="server">University_ID</asp:Label>
                <asp:DropDownList ID="DropDownList1UNI" runat="server" CssClass="form-control"></asp:DropDownList>
                
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1VACCINE" runat="server">Vaccine_ID</asp:Label>
                <asp:DropDownList ID="DropDownList1VACCINE" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
             <div>
                <asp:Label for="txtVaccineDosage" runat="server">Vaccine Dosage</asp:Label>
                <asp:TextBox ID="txtVaccineDosage" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtCovid_Status" runat="server">Covid Status</asp:Label>
                <asp:TextBox ID="txtCovid_Status" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="DropDownList1PerNO" runat="server">Personnel NO</asp:Label>
                <asp:DropDownList ID="DropDownList1PerNO" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
                <asp:Button ID="Button1" runat="server" Text="UPDATE" CssClass="btn btn-warning" OnClick="Button3_Click" />
                
        </div>
    </form>
</asp:Content>
