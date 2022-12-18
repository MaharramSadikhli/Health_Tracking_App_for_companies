<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="Medicament.aspx.cs" Inherits="SQLProjeWebApp.Medicament" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
   
    <table class="table table-bordered table-hover">
        <tr>
            
            <th scope="col">MedicamentID</th>
            <th scope="col">Medicament Name</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Medicament_ID") %></td>
                        <td><%#Eval("Medicament_Name") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

    </form>

</asp:Content>
