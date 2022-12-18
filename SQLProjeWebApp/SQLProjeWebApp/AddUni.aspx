<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="AddUni.aspx.cs" Inherits="SQLProjeWebApp.AddUni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form2" runat="server">
        <div class="form-group">
            <div>

                
            </div>
            <br />
            <div>
                <asp:Label for="txtUNI" runat="server" Text="Label">Enter Uni Name</asp:Label>
                <asp:TextBox ID="txtUNI" runat="server" CssClass="form-control">Enter Uni Name</asp:TextBox>
            



            </div>
        
            <br />
            <asp:Button ID="Button10" runat="server" CssClass="btn btn-warning" Text="Add" OnClick="Button10_Click" />











        </div>





    </form>



</asp:Content>
