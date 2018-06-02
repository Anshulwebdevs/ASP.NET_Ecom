<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product_summary.aspx.cs" Inherits="product_summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<form runat="server" id="form1">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Home</a> <span class="divider">/</span></li>
		<li class="active"> SHOPPING CART</li>
    </ul>

	
			
			<table class="table table-bordered">
			 <tr><th>Address</th></tr>
			 <tr> 
			 <td>
				  <div class="control-group">
					<label class="control-label" for="add">Address</label>
					<div class="controls">
<asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="5" Cols=36></asp:TextBox>
                   <!--     <textarea name="add" cols=36 rows=5></textarea>-->
					</div>
				  </div>

				  <div class="control-group">
					<div class="controls">
<asp:Button ID="Button1" runat="server" Text="Order Now" class="btn" onclick="Button1_Click" />
					<!--  <button type="submit" >Order Now</button>-->
					</div>
				  </div>
			  </td>
			  </tr>
            </table>		


	
</div>
</div></div>
</div></form>
<!-- MainBody End ============================= -->
</asp:Content>

