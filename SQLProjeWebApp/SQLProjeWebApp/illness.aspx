<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="illness.aspx.cs" Inherits="SQLProjeWebApp.illness" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form_illness" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <th scope="col">İlness Names ID</th>
                <th scope="col">İlness Names</th>
                <th scope="col">İlness Symptoms</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeaterill" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("illness_ID") %></td>
                            <td><%#Eval("illness_Name") %></td>
                            <td><%#Eval("illness_Symptoms") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Updateilness.aspx?illness_ID="+Eval("illness_ID") %>' runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </tbody>

        </table>

    </form>
</asp:Content>
