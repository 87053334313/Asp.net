<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="RSVP.Start" MasterPageFile="~/Site.Master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="rek">
            <h1>Приглашение на семинар<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </h1>
            <p>Вы приглашены на семинар</p>
            <p> Подтвердите свое согласие, пройдя регистрацию</p>
        </div>
        <div class="info">
            Семинар состоится 1 апреля 2021 года в 7.30
               
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
                    <%
                        DateTime dataseminar = new DateTime(2021, 4, 1, 7, 30, 0);
                        DateTime dnow=DateTime.Now;
                        int rd=(dataseminar-dnow).Days;
                        int rm=(dataseminar-dnow).Minutes;
                        int rsec=(dataseminar-dnow).Seconds;
                        %>
                   <h3> До семинара осталось<%=rd.ToString()%>дн., <%=rm.ToString() %>мин. и
                       <%=rsec.ToString() %> c.</h3>
          </ContentTemplate>
                  </asp:UpdatePanel>
           
          
        </div>
</asp:Content>

