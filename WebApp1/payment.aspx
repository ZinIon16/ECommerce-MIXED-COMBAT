<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebApp1.payment" %>--%>

<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebApp1.payment" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
         <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
      </asp:Content>  


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <div class="jumbotron jumbotron-fluid" style="background-color:tan">
  <div class="container" style="text-align:center; color:#fff">
  
    <h1 class="display-4 text-white"  >Payment</h1>
    <p class="lead">Secured and Encrypted</p>
  </div>
                 </div>

      <center><table style="width:500px">
               <tr style="width:300px;height:10px">
                   <td>
                      <a href="https://www.paypal.com"><asp:Image ID="Image1" runat="server" ImageUrl="img/download.png" Height="281px" Width="406px" /></a>

                   </td>
                   <td>
                      <a href="https://www.maybank2u.com.my/home/m2u/common/login.do"><asp:Image ID="Image2" runat="server" ImageUrl="img/maybank.png" Height="281px" Width="406px" /></a>
                   </td>
                   <td>
                      <a href="https://www.octoclicks.co.id/login/"><asp:Image ID="Image3" runat="server" ImageUrl="img/cimb.png" Height="281px" Width="406px" /></a>
                   </td>
               </tr>
           </table></center>


     </asp:Content>  