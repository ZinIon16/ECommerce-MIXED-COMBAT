<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateView.aspx.cs" Inherits="WebApp1.updateView" %>--%>
<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeFile="updateView.aspx.cs" Inherits="WebApp1.updateView" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  
  </asp:Content>   

           

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

          <div class="jumbotron jumbotron-fluid" style="background-color:darkcyan">
  <div class="container" style="text-align:center; color:#fff">
  
    <h1 class="display-4" >ADMIN</h1>
    <p class="lead">Admin Dashboard and Product Updates</p>
  </div>
              
</div>
       <%-- <div style="text-align:center">
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" CssClass="btn btn-danger btn-lg" Text="Logout" />
            </div>
  --%>

      <section id="posts">
    <div class="container">
        <div class="row">

            <div class="col-md-4 mt-3">
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Stock</h3>
                        <h4 class="display-4">
                        <i class="fas fa-folder"></i>
                    </h4>
                        <asp:Button ID="btnStock" runat="server"  CssClass="btn btn-outline-light btn-sm" Text="Manage" />
                    </div>
                </div>
                 </div>


            
            <div class="col-md-4 mt-3">
                <div class="card text-center bg text-white mb-3 " style="background-color:#C2A47B">
                    <div class="card-body">
                        <h3>Update Faq</h3>
                        <h4 class="display-4">
                        <i class="fas fa-cog"></i>
                    </h4>
                        <asp:Button ID="btnUpdateFaq" runat="server" OnClick="btnUpdateFaq_Click" CssClass="btn btn-outline-light btn-sm" Text="Update" />
                    </div>
                </div>
                </div>

            <div class="col-md-4 mt-3">
                <div class="card text-center bg-info text-white mb-3">
                    <div class="card-body">
                        <h3>Users</h3>
                        <h4 class="display-4">
                        <i class="fas fa-users"></i>
                    </h4>
                        <asp:Button ID="btnUsers" runat="server" OnClick="btnUsers_Click"  CssClass="btn btn-outline-light btn-sm" Text="View" />
                    </div>
                </div>
                </div>
            
            </div>

          </div>
          </section>

    </asp:Content> 