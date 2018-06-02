<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product_details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

	<div class="span9">
    <ul class="breadcrumb">
    <li><a href="index.aspx">Home</a> <span class="divider">/</span></li>

    <li class="active">product Details</li>
    </ul>	
	<div class="row">	  
			<div id="gallery" class="span3">
            <a href="themes/images/products/large/f1.jpg" title="Fujifilm FinePix S2950 Digital Camera">
                <asp:Image ID="Image1" runat="server" style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera" />
				<!--<img src="themes/images/products/large/3.jpg" style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera"/>-->
            </a>
			<div id="differentview" class="moreOptopm carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f1.jpg" alt=""/></a>
                   <a href="themes/images/products/large/f2.jpg"> <img style="width:29%" src="themes/images/products/large/f2.jpg" alt=""/></a>
                   <a href="themes/images/products/large/f3.jpg" > <img style="width:29%" src="themes/images/products/large/f3.jpg" alt=""/></a>
                  </div>
                  <div class="item">
                   <a href="themes/images/products/large/f3.jpg" > <img style="width:29%" src="themes/images/products/large/f3.jpg" alt=""/></a>
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f1.jpg" alt=""/></a>
                   <a href="themes/images/products/large/f2.jpg"> <img style="width:29%" src="themes/images/products/large/f2.jpg" alt=""/></a>
                  </div>
                </div>
              <!--  
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a> 
			  -->
              </div>
			  

			</div>
			<div class="span6">


				<h3> 
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


</h3>
				<small>- (14MP, 18x Optical Zoom) 3-inch LCD</small>
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">

<a href="product_summary.aspx" class="btn btn-large btn-primary pull-left"> Buy Now <i class=" icon-shopping-cart"></i></a> 
					
				  </div>
				</form>
				
				<hr class="soft"/>
				<h4>100 items in stock</h4>
				<form class="form-horizontal qtyFrm pull-right">
				  <div class="control-group">


				  </div>
				</form>
				<hr class="soft clr"/>
				<p>
<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
				
				</p>

				<br class="clr"/>
			<a href="#" name="detail"></a>
			<hr class="soft"/>
			</div>
			
			<div class="span9">
            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
              
            </ul>
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
			  <h4>Product Information</h4>
                <table class="table table-bordered">
				<tbody>
				<tr class="techSpecRow"><th colspan="2">Product Details</th></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Brand: </td><td class="techSpecTD2">
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Model:</td><td class="techSpecTD2">
<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Size:</td><td class="techSpecTD2"> 
<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">M.R.P</td><td class="techSpecTD2">
<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Offer Price:</td><td class="techSpecTD2">
<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td></tr>
				</tbody>
				</table>
				
				
              </div>







		</div>
          </div>

	</div>
</div>
</div> </div>
</div>
<!-- MainBody End ============================= -->

</asp:Content>

