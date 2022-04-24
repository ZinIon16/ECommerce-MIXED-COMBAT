<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApp1.cart" %>--%>

<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApp1.cart" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
         <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
       <style type="text/css">
        .svgFixer {
            outline: none;
            border: none;
        }

        .rounditAll {
            border-radius: 10px;
        }

        .paddingR {
            margin-right: 20px;
            border-radius: 12px;
        }

        .auto-style11 {
            height: 48px;
        }

        .auto-style12 {
            width: 389px;
        }

        </style>
      </asp:Content>  


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                  <div class="jumbotron jumbotron-fluid" style="background-color:dimgray">
  <div class="container" style="text-align:center; color:#fff">
  
    <h1 class="display-4 text-white"  >MY CART</h1>
    <p class="lead">With secured Checkout</p>
  </div>
                 </div>


     <div>
        <div class="container">
            <div class="col-2" style="float: left">
                <br />
            </div>


            <table style="border-radius: 20px" >
             
                <tr style="background-color:silver">
                    <td>
                        <asp:Label ID="Label5" runat="server" CssClass="btn" Text="Product"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="Label9" runat="server" CssClass="btn" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" CssClass="btn" Text="Price Per Unit"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="Label7" runat="server" CssClass="btn" Text="Quantity"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" CssClass="btn" Text="Total Price"></asp:Label>
                    </td>
                </tr>
                <tr style="background-color: silver;">
                    <td>
                        <asp:Image ID="imgProductImage" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                        </td>
                    <td>
                        <asp:Label ID="lblPricePerUnit" runat="server" Text="0"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtQuantity" runat="server" OnTextChanged="txtQuantity_TextChanged" TextMode="Number">1</asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="btn" Display="Dynamic" ErrorMessage="Quantity Can not be Zero" MaximumValue="20000" MinimumValue="1"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="btn" ErrorMessage="Please Enter Quantity" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr style="background-color: silver;">
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="btnCalculateBill" runat="server" Text="Calculate Total" CssClass="btn btn-light" Width="241px" Height="40px" Font-Bold="true" OnClick="btnCalculateBill_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblTotalBill" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr style="background-color: silver;">
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnCheckOut" runat="server" CssClass="btn btn-light" OnClick="btnCheckOut_Click" Text="Check Out" />
                    </td>
                </tr>
                <tr style="background-color: silver;">
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td colspan="2">
                        &nbsp;</td>
                    <td class="auto-style12" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td colspan="2">&nbsp;</td>
                    <td class="auto-style12" colspan="3">
              
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td colspan="2">&nbsp;</td>
                    <td class="auto-style12" colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td colspan="2">&nbsp;</td>
                    <td class="auto-style12" colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td colspan="2">&nbsp;</td>
                    <td class="auto-style12" colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr style="background-color: silver;">
                    <td colspan="2">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr style="background-color: silver">
                    <td colspan="2">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr style="background-color: silver">
                    <td colspan="2">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr style="background-color: silver">
                    <td class="auto-style11" colspan="2">&nbsp;</td>
                    <td class="auto-style11" colspan="5">&nbsp;</td>
                </tr>
                <tr style="background-color: silver">
                    <td colspan="2">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr style="background-color: silver">
                    <td colspan="2">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr style="background-color: silver">
                    <td style="text-align: center" colspan="2">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">&nbsp;</td>
                    <td class="fa-pull-left" style="text-align: center" colspan="5">&nbsp;</td>
                </tr>


                <tr>
                    <td colspan="7">&nbsp;</td>
                </tr>
            </table>


        </div>
    </div>



      <%--  <div style="text-align:center">
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" CssClass="btn btn-danger btn-lg" Text="Logout" />
            </div>--%>
     </asp:Content>  