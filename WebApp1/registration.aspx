<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApp1.registration" %>--%>
<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="WebApp1.registration" %>
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
        <div>
          
</div>


           <!-- HOME SECTION -->
<header id="home-section">
  <div class="dark-overlay">
    <div class="home-inner container">
      <div class="row">
        <div class="col-lg-8 d-none d-lg-block text-white">
            <h1 class="display-4">We are <strong>INTI</strong> Mixed<strong> Combat</strong><strong> Club</strong>
            </h1>
            <div class="d-flex">
              <div class="p-4 align-self-start">
                <i class="fas fa-check fa-2x"></i>
              </div>
              <div class="p-4 align-self-end">
                Be the best you can be and <br>do more to be more
              </div>
            </div>

            <div class="d-flex">
              <div class="p-4 align-self-start">
                <i class="fas fa-check fa-2x"></i>
              </div>
              <div class="p-4 align-self-end">
                Highly Rated &star; &star; &star; club in INTI International <br>University
              </div>
            </div>

            <div class="d-flex">
              <div class="p-4 align-self-start">
                <i class="fas fa-check fa-2x"></i>
              </div>
              <div class="p-4 align-self-end">
                Diverse Available training session that will not affect <br>
                Your Study
              </div>
            </div>
        </div>


        <div class="col-lg-4">
          <div class="card bg text-center card-form" style="background-color:#808080">
            <div class="card-body">
              <h3 class="text-white">Sign Up Today</h3>
              <p class="text-white">Please fill out this form to register</p>
          

                <div class="form-group">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="You must enter an email*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="EmailChecker" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txtFname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFirstname" runat="server" ControlToValidate="txtFname" ErrorMessage="Your Firstname is required*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                  </div>

                  <div class="form-group">
                  <asp:TextBox ID="txtLname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldLastName" runat="server" ControlToValidate="txtLname" ErrorMessage="Your Lastname is required*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-group">
                         <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="You must enter a password*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegExpPassword" runat="server"
                                            ErrorMessage="Password length must be at least 8 characters"
                                            ForeColor="Red"
                                            ControlToValidate="txtPassword"
                                            ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,30}$" Display="Dynamic" />
                    </div>


                    <div class="form-group">
                     <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Please Enter a Mobile number*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="ValidPhone" runat="server"
                                            ForeColor="Red"
                                            ErrorMessage="Valid Mobile Number is required*"
                                            ControlToValidate="txtMobile"
                                            ValidationExpression="[0]\d{9,10}$" Display="Dynamic" />
                      </div>
                <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn btn-outline-light btn-block" OnClick="btnSubmit_Click"></asp:Button>
                <div>
                    <label for="Login" class="lead text-white">Already a Member?</label>
                <asp:Button ID="btnLogin" runat="server" CausesValidation="false" Text="Login" CssClass="btn btn-outline-light btn-block" OnClick="btnLogin_Click" ></asp:Button>
             </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>


    <div></div>
       <%-- <div class="py-5 mt-3">
            <div style="text-align:left"><h2>Registration Page</h2></div>

            <div>

                <table>
                    <tr>
                        <td>Email:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="You must enter an email*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="EmailChecker" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td>First Name:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtFname" runat="server" CssClass="form-control"></asp:TextBox></td>
                        <td> <asp:RequiredFieldValidator ID="RequiredFirstname" runat="server" ControlToValidate="txtFname" ErrorMessage="Your Firstname is required*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtLname" runat="server" CssClass="form-control"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldLastName" runat="server" ControlToValidate="txtLname" ErrorMessage="Your Lastname is required*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox></td>
                        <td>  <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="You must enter a password*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegExpPassword" runat="server"
                                            ErrorMessage="Password length must be at least 8 characters"
                                            ForeColor="Red"
                                            ControlToValidate="txtPassword"
                                            ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,30}$" Display="Dynamic" /></td>
                    </tr>
                    <tr>
                        <td>Mobile Number:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtMobile" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox></td>
                        <td>  <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Please Enter a Mobile number*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="ValidPhone" runat="server"
                                            ForeColor="Red"
                                            ErrorMessage="Valid Mobile Number is required*"
                                            ControlToValidate="txtMobile"
                                            ValidationExpression="[0]\d{9,10}$" Display="Dynamic" /></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1"><asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" Width="373px"></asp:Button></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Already a Member?</td>
                        <td class="auto-style1"><asp:Button ID="btnLogin" runat="server" CausesValidation="false" Text="Login" CssClass="btn btn-sm btn-secondary" OnClick="btnLogin_Click" ></asp:Button></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
            





        </div>--%>

      </asp:Content>   