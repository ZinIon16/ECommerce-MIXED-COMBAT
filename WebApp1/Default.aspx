<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp1.Default" %>--%>
<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    

      <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>




    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
       <!-- SHOWCASE CAROUSEL -->
<section id="showcase py-5 mt-3">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item carousel-image-1 active ">
        <div class="dark-overlaysec">
      <div class="container">
        <div class="carousel-caption d-sm-block text-right mb-5">
          <h4 class="display-5">Do More, Be More</h4>
          <p>Get trained to be a professional boxer / kickboxer</p>
             <asp:HyperLink ID="hnlJoinOne" runat="server" CssClass="btn btn-danger btn-sm" NavigateUrl="~/registration.aspx"><i class="fas fa-angle-double-right"></i>Become a Club Member Today</asp:HyperLink>
         <%-- <a href="#" class="btn btn-danger btn-sm"><i class="fas fa-angle-double-right"></i>Book Now</a>--%>
        </div>
          </div>
      </div>
    </div>
<!--SECOND-->
<div class="carousel-item carousel-image-2 ">
  <div class="dark-overlaysec">
  <div class="container">
    <div class="carousel-caption d-sm-block text-right mb-5">
      <h4 class="display-5 text-white">Stretch While You are Still Young</h4>
      <p class="display-6">Multiple Practice session that won't affect your study</p>
        <asp:HyperLink ID="hnlJoinTwo" runat="server" CssClass="btn btn-primary btn-sm" NavigateUrl="~/registration.aspx"><i class="fas fa-angle-double-right"></i>Become a Club Member Today</asp:HyperLink> 
    </div>
  </div>
  </div>
</div>
<!--THIRD-->
<div class="carousel-item carousel-image-3 " >
  <div class="dark-overlaysec">
  <div class="container">
    <div class="carousel-caption d-sm-block text-right mb-5">
      <h4 class="display-5">Get in the RING and Explore</h4>
      <p>Diverse Events amidst the Semester Awaits You....</p>
        <asp:HyperLink ID="hnlJoinThree" runat="server" CssClass="btn btn-danger btn-sm" NavigateUrl="~/registration.aspx"><i class="fas fa-angle-double-right"></i>Become a Club Member Today</asp:HyperLink>
    </div>
  </div>
  </div>
</div>
  </div>
  <!-- CONTROLS-->

<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
  <span class="sr-only">Previous</span>
</a>

<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>  
</div>
</section>
    <br />


    <div class="container" style="text-align:center">
        <h2 style="color:orangered">
         <i class="fas fa-rocket mt-4 "></i><span style="font-family: Georgia, 'Times New Roman', Times, serif; color:#000"> Featured</span><span style="font-family: Georgia, 'Times New Roman', Times, serif; color:green"> Items</span></h2>

     
    </div>

    <br />
    <div class="container">
    <asp:DropDownList ID="ddlDisp" runat="server" CssClass="form-control border-success" Width="170px" AutoPostBack="true" OnSelectedIndexChanged="ddlDisp_SelectedIndexChanged"></asp:DropDownList>
     <!-- CARD DECK -->
  
        <asp:DataList ID="dListProducts" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
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
                    <%--<p <asp:Label ID="lblName" runat="server"
                                    Text='<%# Eval("name") %>' /></p>--%>
                    RM <asp:Label ID="lblPrice" runat="server"
                                Text='<%#     String.Format("{0:#.00}",Eval("UnitPrice")) %>' />
                    <%-- <div class="card-footer">--%>
              <asp:HyperLink ID="hlProdDetail" runat="server" CssClass="btn btn-outline-success btn-block" Width="250px" Font-Bold="true"  NavigateUrl='<%# "ProductDetails.aspx?ID="+Eval("ProductID") %>' Text='Buy'></asp:HyperLink>
            <%--</div>--%>
                     
                </div>

            </div>
         
        </div>
       
        </ItemTemplate>
            </asp:DataList>

        </div>  
  <!-- INFO -->
<section id="info" class="py-3">
<div class="container">
  <div class="row">
       <div class="col-md-6 align-self-start">
      <img src="img/knee.png" class="py-2" alt="" class="img-fluid">
    </div>
    <div class="col-md-6 align-self-center">
      <h3>Exclusive Knee Pad</h3>
      <p>Varieties of accessories including full knee pads are available. Buy now at cheaper rate with 10% discount when you buy 2 pieces and additional one piece will be added when you purchase 4 pieces. Grab the offer now!</p>
           <asp:HyperLink ID="hlProdDetail2" runat="server" CssClass="btn btn-outline-danger"  NavigateUrl="~/productPage.aspx"  Text='Browse'></asp:HyperLink>
      <%--<a href="#" height="150px" width="150px" class="btn btn-outline-danger " ><i class="fas fa-angle-double-right"></i> Browse</a>--%>
    </div>
   
  </div>
</div>
</section>
 

    <!-- ENQUIRY -->
<div id="newsletter" class="text-center p-2 mt-5 bg-dark text-white">
  <div class="container">
   
      <div>
           
        <h3>Newsletter</h3>
          <asp:Label ID="lblMssg" runat="server" CssClass="alert-danger" Visible="false" Text=""></asp:Label>
        <p>Subscribe to Our Newsletter for Latest Updates</p>
        </div>
                
   
                   
          <div class="row">
               <div class="col-md-4 mb-2">
              <div class="input-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <div class="fas fa-user"></div>
                    </span>
                </div>
                  <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                  </div>
                   </div>
            
          <div class="col-md-4 mb-2">
            <div class="input-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <div class="fas fa-envelope"></div>
                    </span>
                </div>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            </div>
         
            
      
              </div>

         
          <div class="col-md-4">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="btn btn-danger btn-block mb-3"/>
              </div>
      
                <asp:RequiredFieldValidator ID ="rfName" runat="server" CssClass="text-left" 
                    ControlToValidate="txtName" ErrorMessage="Name is Required !" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegExName" runat="server" 
                        ValidationExpression="^[a-zA-Z\s]+$" 
                        ControlToValidate="txtName" 
                    ErrorMessage="Must be Letters only !" ForeColor="Red"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator ID ="rfEmail" runat="server" CssClass="text-left" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is Required !" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegExEmail" runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Must be a valid Email !" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
    </div>

  </div>
     
   
    </div>
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