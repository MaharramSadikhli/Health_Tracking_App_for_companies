<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="UpdatePosition.aspx.cs" Inherits="SQLProjeWebApp.UpdatePosition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtPos_ID" runat="server">Position_ID</asp:Label>
                <asp:TextBox ID="txtPos_ID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            
            
            <asp:Label for="TextBox1Positions" runat="server">Positions</asp:Label>
            <asp:TextBox ID="TextBox1Positions" runat="server" CssClass="form-control"></asp:TextBox>
            
           
            <br />
           
            
            
             <div>
                <asp:Label for="txtSalary" runat="server">Salary of Position</asp:Label>
                <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtWorkDate" runat="server">Working Date</asp:Label>
                <asp:TextBox ID="txtWorkDate" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <br />
                <asp:Button ID="Button8" runat="server" Text="SAVE" CssClass="btn btn-warning" OnClick="Button8_Click" />
                
        </div>
    </form>
</asp:Content>
