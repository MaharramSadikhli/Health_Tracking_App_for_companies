<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="illnessPersonnel.aspx.cs" Inherits="SQLProjeWebApp.illnessPersonnel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="table table-bordered table-hover">
    <tr>
      <th scope="col">PERSONNEL_ID</th>
      <th scope="col">illness_ID</th>
      <th scope="col">illness_date</th>
      <th scope="col">Medicament_ID</th>
      <th scope="col">Medicament_Dosage</th>
      <th scope="col">Sick Personnel ID</th>
      <th scope="col">OPERATION</th>
    </tr>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Personnel_ID")%></td>
                  <td><%#Eval("illness_ID")%></td>
                  <td><%#Eval("illness_date")%></td>
                  <td><%#Eval("Medicament_ID")%></td>
                  <td><%#Eval("Medicament_Dosage")%></td>
                  <td><%#Eval("SickPers_ID")%></td>
                  
                  
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DeleteSickPersonnel.aspx?SickPers_ID="+Eval("SickPers_ID") %>'  runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/UpdateSickPerson.aspx?SickPers_ID="+Eval("SickPers_ID") %>'  runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>
                 </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>  
  </tbody>
</table>
</asp:Content>
