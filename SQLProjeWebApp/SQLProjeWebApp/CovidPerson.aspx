<%@ Page Title="" Language="C#" MasterPageFile="~/ÖĞRETMEN.Master" AutoEventWireup="true" CodeBehind="CovidPerson.aspx.cs" Inherits="SQLProjeWebApp.CovidPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">CovidPerson_ID</th>
            <th scope="col">Personnel_ID</th>
            <th scope="col">Vaccine_ID</th>
            <th scope="col">Symptoms</th>
            <th scope="col">The date that Covid was Positive</th>
            <th scope="col">The date that Covid was Negative</th>
            <th scope="col">Operations</th>
        </tr>
       <tbody>
           <asp:Repeater ID="RepeaterCov" runat="server">
               <ItemTemplate>
                   <tr>
                       <td><%#Eval("CovidPerson_ID")%></td>
                       <td><%#Eval("Personnel_ID")%></td>
                       <td><%#Eval("Vaccine_ID")%></td>
                       <td><%#Eval("Symptoms")%></td>
                       <td><%#Eval("Covid_Positive_Date")%></td>
                       <td><%#Eval("Covid_Negatif_Date")%></td>
                       <td>
                           <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DeleteCovidPersonnel.aspx?CovidPerson_ID="+Eval("CovidPerson_ID")%>' runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>
                           <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/UpdateCovPerson.aspx?CovidPerson_ID="+Eval("CovidPerson_ID")%>' runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>
                       </td>
                   </tr>
               </ItemTemplate>
           </asp:Repeater>
       </tbody>
    </table>
</asp:Content>
