<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="UpdateP.aspx.cs" Inherits="SQLProjeWebApp.UpdateP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtPerTCNO" runat="server">Personnel TCNO</asp:Label>
                <asp:TextBox ID="txtPerTCNO" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtPerName" runat="server">Personnel Name</asp:Label>
                <asp:TextBox ID="txtPerName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtPerSurname" runat="server">Personnel Surname</asp:Label>
                <asp:TextBox ID="txtPerSurname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtPerBloogG" runat="server">Personnel BlooG Group</asp:Label>
                <asp:TextBox ID="txtPerBloogG" runat="server" CssClass="form-control"></asp:TextBox>
                
            </div>
            <br />
            <div>
                 <asp:Label for="DropDownList1City" runat="server">City</asp:Label>
                 <asp:DropDownList ID="DropDownList1City" runat="server" CssClass="form-control"></asp:DropDownList>
                
            </div>
            <br />
             <div>
                <asp:Label for="txtPerNO" runat="server">Personnel NO</asp:Label>
                <asp:TextBox ID="txtPerNO" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            
            <asp:Button runat="server" Text="UPDATE" CssClass="btn btn-warning" OnClick="Unnamed7_Click" />
            
            
        </div>

    </form>
</asp:Content>
