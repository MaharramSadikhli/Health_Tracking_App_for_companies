<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="Vaccine.aspx.cs" Inherits="SQLProjeWebApp.Vaccine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="formVac" runat="server">
        
       
          <table class="table table-bordered table-hover">
            <tr>
                <th scope="col">Vaccine ID</th>
                <th scope="col">Vaccine Name</th>

            </tr>
            <tbody>
                <asp:Repeater ID="RepeaterVac" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("Vaccine_ID")%></td>
                            <td><%#Eval("Vaccine_Name") %></td>

                        </tr>

                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

    </form>
</asp:Content>
