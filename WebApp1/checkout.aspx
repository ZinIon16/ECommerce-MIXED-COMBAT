<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WebApp1.checkout" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"/>
    <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
    crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" integrity="sha512-Velp0ebMKjcd9RiCoaHhLXkR1sFoCCWXNp6w4zj1hfMifYB5441C+sKeBl/T/Ka6NjBiRfBBQRaQq65ekYz3UQ==" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.8.1/sweetalert2.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.8.1/sweetalert2.min.css"
        rel="stylesheet" type="text/css" />
    <title>Mixed Combat Club --- Checkout Page</title>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
     
      <asp:HyperLink ID="hnlinklogo" runat="server" CssClass="navbar-brand mt-2 ml-3" NavigateUrl="~/Default.aspx" style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:orangered">Mixed <span style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:#fff">Combat </span><span style="font-family: monospace;  font-size: x-large; font-weight:bolder; color:green">Club</span></asp:HyperLink>
  <div class="collapse navbar-collapse mt-2" id="navbarTogglerDemo03">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
             <asp:HyperLink ID="hnlinkHome" CssClass="nav-link" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        </li>
          <li class="nav-item">
             <asp:HyperLink ID="hnlinkProduct" CssClass="nav-link active" runat="server" NavigateUrl="~/productPage.aspx">Products</asp:HyperLink>
        </li>
  <li class="nav-item">
                <asp:HyperLink ID="HyperLinkFAQ" CssClass="nav-link" runat="server" NavigateUrl="~/FAQuser.aspx">FAQ</asp:HyperLink>   
        </li>
         
            <li class="nav-item">
                <asp:HyperLink ID="hnlinkLogout" CssClass="nav-link" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>   
        </li>
          
        
          </ul>
    </div>
  </nav>
        <br />
        <br />
        <br />
        <br />
        <br />

        <div>
           <asp:MultiView ID="MultiViewCheckout" runat="server">
        <asp:View ID="viewCustDetails" runat="server">
            <table  class="tableC">
                <tr>
                    <td colspan="2">
                        <h2>-Customer Info</h2>
                    </td>
                </tr>

                 
                <tr>
                    <td class="auto-style14">First Name</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Last Name</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>

              
               
                <tr>
                    <td class="auto-style14">Phone Number</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                   <tr>
                        <td class="auto-style8" colspan="2" style="text-align:right">
                              <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Next &gt;&gt;" />
                        </td>
                    </tr>    
                      
                        
                
</table>
            </asp:View>
            <asp:View ID="viewDetails" runat="server">
            <table class="tableC">
                <tr>
                    <td colspan="2"><h2>---Customer Details---</h2></td>
                </tr>
                
                <tr>
                    <td>First Name</td>
                    <td class="auto-style12">
                        :<asp:Label ID="lblFirstName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td class="auto-style12">
                        :<asp:Label ID="lblLastName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td class="auto-style12">
                        :<asp:Label ID="lblPhoneNumber" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                        <td class="auto-style8" colspan="2" style="text-align:left">
                              <asp:Button ID="BtnBack" runat="server" onclick="btnBack_Click" Text="Back" />
                            <asp:Button ID="Button1" runat="server" onclick="btnConfirm_Click" Text="Confirm" />
                        </td>
                    </tr>  
               
                
                </table>
                </asp:View>
               
              <asp:View ID="viewPayment" runat="server">
            <table class="tableC">
                <tr>
                    <td colspan="2"><h3>Payment methods:</h3></td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem>Pay by Cash</asp:ListItem>
                            <asp:ListItem>Bank Transfer</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style12">
                        <br />
                        Account Details:<br /> Maybank<br /> Mixed Combat Club<br /> 7685246709752<br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="text-align:right" class="auto-style12">
                        <asp:Button ID="Button2" runat="server" Text="Submit >>" 
                            onclick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
               <asp:View ID="View1" runat="server">

    <br />
                   <br />
                   <br />
                   <br />
                   <br />

    <h1>Thank you for ordering our products!! </h1>
    <p>
        &nbsp;</p>
    
    <h2>Please keep supporting our club by joining it and also buying our club&#39;s products. </h2>
    <p>
        &nbsp;</p>
                   <h2>For enquiry, please contact us at mixedcombat@gmail.com </h2>
    

    <br />
    <br />
                        
 
</asp:View>


          </asp:MultiView>
        </div>
    </form>
</body>
</html>
