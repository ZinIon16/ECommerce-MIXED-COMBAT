<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateProfile.aspx.cs" Inherits="WebApp1.updateProfile" %>--%>

<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="updateProfile.aspx.cs" Inherits="WebApp1.updateProfile" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
         <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
      </asp:Content>  


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

           <div class="jumbotron jumbotron-fluid" style="background-color:darkcyan">
  <div class="container" style="text-align:center; color:#fff">
  
    <h1 class="display-4" >PROFILE</h1>
    <p class="lead">My Account Update</p>
  </div>
              
</div>
       <%-- <div style="text-align:center">
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" CssClass="btn btn-danger btn-lg" Text="Logout" />
            </div>--%>


    
          <section id="profile">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
            <h6 class="text-center mb-3">
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            EnableClientScript="True" 
            HeaderText="Please correct the following fields: " ForeColor="Red" ShowMessageBox="False" ShowSummary="True" />
            <h6>
            <asp:Label ID="lblResult" runat="server" Font-Size="X-Large" ForeColor="#17a2b8"></asp:Label>
                </h6>
          <div class="card">
            <div class="card-header">
                <h4>
                <asp:Label ID="lblshowProf" runat="server" Text="Profile Details"></asp:Label>
               <asp:Label ID="lblEditPrfl" runat="server" Visible="false" Text="Edit Profile"></asp:Label>
                    </h4>
            </div>
            <div class="card-body">
              <div>
                  <div class="form-group">
                  <label>Email</label>
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                       <%-- <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="You must enter an email*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="EmailChecker" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                </div>

                  <div class="form-group">
                  <label>First Name</label>
                    <asp:Label ID="lblFname" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtFname" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID ="rfFname" runat="server" CssClass="text-left" 
                            ControlToValidate="txtFname" ErrorMessage="*First Name is Required" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                               

                

                  <div class="form-group">
                  <label>Last Name</label>
                    <asp:Label ID="lblLname" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtLname" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>

                </div><asp:RequiredFieldValidator ID ="rfLname" runat="server" CssClass="text-left" 
                            ControlToValidate="txtLname" ErrorMessage="*Last Name is Required" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                             
            

              <div class="form-group">
                  <label>Mobile Number</label>
                    <asp:Label ID="lblMobile" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtMobile" runat="server" Visible="false" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID ="rfMobile" runat="server" CssClass="text-left" 
                            ControlToValidate="txtMobile" ErrorMessage="*Mobile Number is Required" 
                            ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegexPhone" runat="server" 
                                ControlToValidate="txtMobile" 
                                ErrorMessage="*Mobile Number Must be Numbers Only !" 
                                ValidationExpression="^[0-9]*$" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>

                         <div class="form-group">
                              <label>Password</label>
                             <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label>
                         <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                               </div>
                         <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegExpPassword" runat="server"
                                            ErrorMessage="Password length must be at least 8 characters"
                                            ForeColor="Red"
                                            ControlToValidate="txtPassword"
                                            ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,30}$" Display="Dynamic" />
                  

                  <asp:Button ID="btnEditProf" runat="server" OnClick="btnEditProf_Click" CssClass="btn btn-info btn-block" Text="Edit Profile" />
                  <asp:Button ID="btnUpdatChanges" runat="server" OnClick="btnUpdatChanges_Click" Visible="false" CssClass="btn btn-success btn-block" Text="Update" />
                </div>
              </div>
            </div>
          </div>
        <div class="col-md-3">
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
          <h3>Profile Picture</h3>
        <%--  <img src="img/users/avatar.png" alt="" class="d-block img-fluid mb-3"/>--%>
             <asp:Image ID="imgCheck" runat="server"  CssClass="d-block img-fluid mb-3" />
             <asp:FileUpload ID="fuImg" runat="server" CssClass="btn btn-secondary btn-block" />
            <asp:Button ID="btnUpload" runat="server" CausesValidation="false" OnClick="btnUpload_Click" CssClass="btn btn-info btn-block" Text="Upload" />
             <asp:Button ID="btnDeleteImg" runat="server" CausesValidation="false" OnClick="btnDeleteImg_Click" CssClass="btn btn-danger btn-block" Text="Delete Image" />
        </div>
      </div>
    </div>
  </section>

     </asp:Content>  