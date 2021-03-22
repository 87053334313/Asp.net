<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="RSVP.SummaryBD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Список участников</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="Rdata" HeaderText="Дата регистрации" ReadOnly="True" SortExpression="Rdata" />
            <asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Электронный адрес" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="RSVP.SampleContext" EntityTypeName="" Select="new (Reports, Rdata, WillAttend, Phone, Email, Name)" TableName="GuestResponses"></asp:LinqDataSource>
</asp:Content>
