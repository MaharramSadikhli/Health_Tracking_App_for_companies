<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="Personnel.aspx.cs" Inherits="SQLProjeWebApp.Personnel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
    <tr>
      <th scope="col">PERSONNEL_ID</th>
      <th scope="col">POSITION_ID</th>
      <th scope="col">GRADUATION_ID</th>
      <th scope="col">UNI_ID</th>
      <th scope="col">VACCINE_ID</th>
      <th scope="col">VACCINE_DOSAGE</th>
      <th scope="col">COVID_STATUS</th>
      <th scope="col">PERSONNEL_NO</th>
      <th scope="col">OPERATION</th>
    </tr>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Personnel_ID")%></td>
                  <td><%#Eval("Position_ID")%></td>
                  <td><%#Eval("Grad_ID")%></td>
                  <td><%#Eval("Uni_ID")%></td>
                  <td><%#Eval("Vaccine_ID")%></td>
                  <td><%#Eval("VaccineDosage")%></td>
                  <td><%#Eval("Covid_Status") %></td>
                  <td><%#Eval("Personnel_NO") %></td>
                  
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DeletePersonnelTBL.aspx?Personnel_ID="+Eval("Personnel_ID") %>' runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/UpdatePersonnels.aspx?Personnel_ID="+Eval("Personnel_ID") %>' runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>  
  </tbody>
</table>
</asp:Content>
