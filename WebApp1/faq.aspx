<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="WebApp1.faq" %>--%>

<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="WebApp1.faq" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
         <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>

         <script type="text/javascript" src="scripts/jquery-3.3.1.min.js"></script>
  <script type="text/javascript">
        $(function () {
            $(".Ans").hide();

            $(".Quest").click(function () {
                $(this).siblings(".Ans").toggle(300);
            });

        });


    </script>
     
      </asp:Content>  


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

             <div class="jumbotron jumbotron-fluid" style="background-color:dimgray">
  <div class="container" style="text-align:center; color:#fff">
  
    <h1 class="display-4 text-white"  >FAQ</h1>
    <p class="lead">Frequently Questions and Answers</p>
  </div>
                 </div>


        <div class="container">
            <ol>
                <asp:Repeater ID="repFaqs" runat="server">
                    <ItemTemplate>
                        <div>
                           
                            <div class="Quest card card-header" style="background-color: #ebf0f5">
                                <div  class="card-btn btn text-left"><%# Eval("Quest") %><i class="fas fa-plus float-right"></i></div>
                        

                            </div>
                       


                            <div class="Ans card-body text-left" style="background-color: #f5f7fa"><%# Eval("Ans") %></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </ol>
        </div>

       
   

    <script>
          $('.card-header').on('click',function() { 
              $(this).find('i').toggleClass('fas fa-minus aria-hidden="true"');
              
        });

        
    </script>

     </asp:Content>  