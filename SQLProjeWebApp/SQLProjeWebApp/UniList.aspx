<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="UniList.aspx.cs" Inherits="SQLProjeWebApp.UniList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>

            <th scope="col">UNI ID</th>
            <th scope="col">UNI LIST</th>
            
        </tr>
       <tbody>
           <asp:Repeater ID="Repeater2" runat="server">

             <ItemTemplate>
                <tr>

                    <td><%#Eval("Uni_ID") %></td>
                    <td><%#Eval("Uni_Name") %></td>
                    

                </tr>

             </ItemTemplate> 
          </asp:Repeater>





       </tbody>
  









  </table>
</asp:Content>
