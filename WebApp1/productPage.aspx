<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="productPage.aspx.cs" Inherits="WebApp1.productPage"  %>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productPage.aspx.cs" Inherits="WebApp1.productPage" %>--%>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>


          </asp:Content>   

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    

            <section id="search" class="py-4 mb-4 bg-light" style="margin-top:70px">
    <div class="container">
      <div class="row">
       

      <div class="col-md-12 ml-auto">
          <div class="input-group">
              <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control form-control-lg" placeholder="Search Products...."></asp:TextBox>
              <div class="input-group-apend">
                  <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" CssClass="btn btn-outline-success btn-lg" Text="Search" />
                  <asp:Label ID="lblRecord" runat="server" Text="" Visible="false"></asp:Label>
              </div>
          </div>

      </div>
             
      </div>
    </div>
  </section>


   
       <asp:DataList ID="dListProduct" runat="server" CssClass="container mt-2 py-2 " RepeatColumns="5" RepeatDirection="Horizontal">
  
            <ItemTemplate>
                
        <div class="card-deck">
            <div class="card border-success my-1">
                <div class="card-header" style="text-align:center">
              <asp:Label ID="lblName" runat="server"
                                    Text='<%# Eval("name") %>' />
            </div>
                <div class="card-body">
                    <h4 class="card-title"><asp:Image ID="imgProduct" runat="server"
                                    ImageUrl='<%# Eval("imageFile") %>' Height="220px" Width="250px" ImageAlign="Middle" /></h4>
                 
                    RM <asp:Label ID="lblPrice" runat="server"
                                Text='<%#     String.Format("{0:#.00}",Eval("UnitPrice")) %>' />
                
      <%--      <asp:Button ID="btnPurchase" CssClass="btn btn-outline-success btn-block" Width="250px" Font-Bold="true" runat="server" Text="Buy" OnClick='<%# "productDetails.aspx?ID=" + Eval("ProductID") %>'></asp:Button>--%>
            <asp:HyperLink ID="hlProdDetail" runat="server" CssClass="btn btn-outline-success btn-block" Width="250px" Font-Bold="true"  NavigateUrl='<%# "ProductDetails.aspx?ID="+Eval("ProductID") %>' Text='Buy'></asp:HyperLink>
                       
           

            </div>
         
        </div>
                       </div>
       
        </ItemTemplate>
            </asp:DataList>
      

      <div class="container py-5">
         <div class="col-md-12 mx-auto">
             <div class="row">
                 <div class="col-md-6">
                    <asp:AdRotator ID="arAdvertisement1" runat="server" AdvertisementFile="~/XMLfiles/Ad.xml" Height="95px" Width="500px" />
                     </div>
                 <div class="col-md-6">
                    <asp:AdRotator ID="arAdvertisement2" runat="server" AdvertisementFile="~/XMLfiles/Ad.xml" Height="95px" Width="500px" />
                     </div>
                 </div>
            </div>
            </div>
          </asp:Content>   