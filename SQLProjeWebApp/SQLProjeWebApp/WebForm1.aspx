<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SQLProjeWebApp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
    <tr>
      <th scope="col">TC_NO</th>
      <th scope="col">NAME</th>
      <th scope="col">SURNAME</th>
      <th scope="col">BLOOG_GROUP</th>
      <th scope="col">CITY_ID</th>
      <th scope="col">PERSONNEL_NO</th>
      <th scope="col">OPERATION</th>
    </tr>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Personnel_TCNO")%></td>
                  <td><%#Eval("Personnel_Name")%></td>
                  <td><%#Eval("Personnel_Surname")%></td>
                  <td><%#Eval("Personnell_BloogG")%></td>
                  <td><%#Eval("City_ID")%></td>
                  <td><%#Eval("Personnel_NO")%></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DelPersonnel.aspx?Personnel_NO="+Eval("Personnel_NO") %>' runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/UpdateP.aspx?Personnel_NO="+Eval("Personnel_NO") %>' runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>  
  </tbody>
</table>

</asp:Content>
