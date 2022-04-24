<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="WebApp1.productDetails" %>--%>
<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="WebApp1.productDetails" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
         <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
      </asp:Content>  


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" /> 
                           
                                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">   
                                    <ContentTemplate> 


     <asp:DataList ID="dListProduct" runat="server" CssClass="container mt-2 py-2 " RepeatColumns="1"  Height="650px" Width="450px">
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


                  
                
            <asp:Button ID="btnCart" CssClass="btn btn-outline-success btn-block" Width="250px" Font-Bold="true" runat="server" Text="Add to Cart" OnClick="btnCart_Click"></asp:Button>
           
                     
           

            </div>
         
        </div>
                       </div>
                  <asp:Label ID="lblDescription" runat="server" CssClass="lead" Text='<%# Eval("LongDescription") %>'></asp:Label>
       
        </ItemTemplate>
            </asp:DataList>
                                        </ContentTemplate>
                             
                          
                                 </asp:UpdatePanel>


     </asp:Content>  
