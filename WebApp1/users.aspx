<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="WebApp1.users" %>--%>

<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="WebApp1.users" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
         <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
      </asp:Content>  


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

     <div class="jumbotron jumbotron-fluid" style="background-color:darkcyan">
  <div class="container" style="text-align:center; color:#fff">
  
    <h1 class="display-4 text-white"  >USERS</h1>
    <p class="lead"></p>
  </div>
                 </div>

    
        <section id="posts">
    <div class="container">
        <h6 class="text-center mb-3">
     <%--  <asp:Label ID="lblMssg" runat="server" CssClass="alert"  Text="" ForeColor="white" BackColor="#28a745" Font-Size="Larger"></asp:Label>--%>
          </h6>

    </div>
             <section id="search" class="py-4 mb-4 bg-light">
    <div class="container">
      <div class="row">
          <div>
         <%--  <asp:HyperLink ID="hlnBack" runat="server" CssClass="btn btn-outline-info btn-block" Style="float: right; margin-right: 50px"
            Visible="false"
            NavigateUrl="~/users.aspx"><i class="fas fa-arrow-left"></i>Go Back</asp:HyperLink>--%>
              <asp:HyperLink ID="hlnBack" runat="server" Visible="false" CssClass="btn btn-outline-info btn-block" Font-Size="Larger" NavigateUrl="~/users.aspx"><i class="fas fa-arrow-left"></i>Back To Users</asp:HyperLink>
            
              </div>
            <div style="float:left">
            <asp:HyperLink ID="hnlBack1" runat="server" CssClass="btn btn-light btn-block" Font-Size="Larger" NavigateUrl="~/updateView.aspx"><i class="fas fa-arrow-left"></i>Back To Dashboard</asp:HyperLink>
            
        </div>
      <div class="col-md-6 ml-auto">
        
          <div class="input-group">
              <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control form-control-lg" placeholder="Search User...."></asp:TextBox>
              <div class="input-group-apend">
                  <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" CssClass="btn btn-info btn-lg" Text="Search" />
                  <asp:Label ID="lblRecord" runat="server" Text="" Visible="false"></asp:Label>
              </div>
          </div>

      </div>
      </div>
    </div>
  </section>


            <div class=" container mt-2">
                 
                    <h4 class="text-center">Users</h4>
                       <div class="table table-responsive table-striped" style="overflow-x:auto">
        <asp:GridView ID="gvUsers" runat="server" OnRowDeleting="gvUsers_RowDeleting" CssClass="mr-5 ml-5" AutoGenerateColumns="False"
           DataKeyNames="email" CellPadding="9"
            ForeColor="#333333" GridLines="None"
            AllowPaging="True"  >
            <AlternatingRowStyle BackColor="White" ForeColor="#17a2b8" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField>
                    
                </asp:TemplateField>
                  <asp:ImageField DataImageUrlField="userImg" HeaderText="Image"  ControlStyle-CssClass="img-fluid"  ControlStyle-Width="50px" ControlStyle-Height="50px"></asp:ImageField>     
                 <%-- <asp:BoundField DataField="studentAvatar" HeaderText="Image" SortExpression="studentAvatar" ReadOnly="True" />--%>
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ReadOnly="True" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="mobileNumber" HeaderText="Mobile" SortExpression="mobileNumber" />
              
                <asp:CommandField ShowEditButton="false" />  
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
            <EditRowStyle BackColor="#c9c7c7" />
            <FooterStyle BackColor="#17a2b8" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#17a2b8" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#17a2b8" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
                </div>

                     
            
            </div>
            
  
</section>

     </asp:Content>  