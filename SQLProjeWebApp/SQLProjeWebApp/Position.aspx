<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="Position.aspx.cs" Inherits="SQLProjeWebApp.Position" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      
     <table class="table table-bordered table-hover">
    <tr>
      <th scope="col">Position ID</th>
      <th scope="col">Position</th>
      <th scope="col">Salary of Positions</th>
      <th scope="col">Working Date</th>
     
      <th scope="col">OPERATION</th>
    </tr>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Position_ID")%></td>
                  <td><%#Eval("Position_Name")%></td>
                  <td><%#Eval("Position_Salary")%></td>
                  <td><%#Eval("WorkingDate")%></td>
                  
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/UpdatePosition.aspx?Position_ID="+Eval("Position_ID") %>'  runat="server" BackColor="#00ff00" CssClass="btn btn-group">UPDATE</asp:HyperLink>
                      
                      
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>  
  </tbody>
</table>
</asp:Content>
