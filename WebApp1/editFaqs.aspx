<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editFaqs.aspx.cs" Inherits="WebApp1.editFaqs" %>--%>

<%@ Page Language="C#" MasterPageFile="~/clubMaster.master" AutoEventWireup="true" CodeBehind="editFaqs.aspx.cs" Inherits="WebApp1.editFaqs" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
         <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
      </asp:Content>  


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

      <div class="jumbotron jumbotron-fluid" style="background-color:dimgray">
  <div class="container" style="text-align:center; color:#fff">
  
    <h1 class="display-4 text-white"  >UPDATE FAQS</h1>
    <p class="lead"></p>
  </div>
                 </div>
     <div class="container">
        <asp:HyperLink ID="hlBack" runat="server" Style="float: right; margin-right: 50px"
            Visible="false"
            NavigateUrl="~/Faq2.aspx">Go Back</asp:HyperLink>
        <br />
        <div style="text-align: center;">
            <h6>QUESTION AND ANSWER ID:</h6>
            <asp:TextBox ID="txtSearch" BorderStyle="Groove" runat="server" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="" />
            <br />
        </div>

        <div>
            <table id="editing" runat="server">

                <tr>
                    <td>Q&amp;A ID</td>
                    <td>
                        <asp:TextBox ID="txtQAID" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Question</td>
                    <td>
                        <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>
                        <asp:TextBox ID="txtAnswer" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <div class="form-row">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-primary" OnClick="btnDelete_Click" />
                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" OnClick="btnClear_Click" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblSuccess" runat="server" Font-Bold="True" ForeColor="Green" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" />
                    </td>
                </tr>
            </table>
            <br />
            <%-- Making table run at server We can use Label if not editable and textbox to be editable--%>
            <table id="result" runat="server" class="auto-style4">
                <tr>
                    <td class="auto-style1">Q&amp;A ID</td>
                    <td class="auto-style1">&nbsp;<asp:Label ID="lblQAID" runat="server" /></td>
                </tr>
                <tr>
                    <td>Question</td>
                    <td>&nbsp;<asp:Label ID="lblQuestion" runat="server" /></td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>&nbsp;<asp:Label ID="lblAnswer" runat="server" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" TextMode="MultiLine" CssClass="btn btn-primary" Text="Edit" OnClick="btnEdit_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </div>

     </asp:Content>  