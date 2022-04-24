<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApp1.login" %>--%>

<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="WebApp1.login" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>

    <style type="text/css">
        .auto-style1 {
            width: 368px;
        }
    </style>
 </asp:Content>  
   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
       


      <!-- HOME SECTION -->
<header id="homee-section">
  <div class="dark-overlay">
    <div class="homee-inner container">
      <div class="row">
        


        <div class="col-lg-4 ml-5 mx-auto" style="text-align:center">
            <div class="card bg text-center card-form" style="background-color:#808080">
            <div class="card-body">
              <h3 style="color:#fff"><i class="far fa-user-circle fa-2x"></i></h3>
                <h3 class="lead text-white">
                Account Login</h3>
              <asp:Label ID="lblMssg" runat="server" Text="" CssClass="alert-danger"></asp:Label>
          

                <div class="form-group">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                 
                        <asp:RequiredFieldValidator ID="emailValidate1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please Enter Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="emailValidate2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    
                </div>

               

                     <div class="form-group">
                         <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="passwordValidate" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Please Enter Password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                    </div>


                <asp:Button ID="btnLogin" runat="server" Text="Login" CausesValidation="true"  CssClass="btn btn-outline-light btn-block" OnClick="btnLogin_Click" ></asp:Button>
                <div>
                    <label for="Register" class="lead text-white">Not a Member?</label>

                <asp:Button ID="btnRegister" runat="server" CausesValidation="false" Text="Register" CssClass="btn btn-outline-light btn-block" OnClick="btnRegister_Click" ></asp:Button>


                   
                                
                                      

             </div>
        </div>
        </div>
      </div>
          </div>
    </div>
  </div>
</header>




                
                                        

                         
                                       

          
</asp:Content>   