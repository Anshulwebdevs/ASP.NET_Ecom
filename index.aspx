<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--carasol -->
<div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
		  <div class="item active">
		  <div class="container">
			<a href="register.aspx"><img style="width:100%" src="themes/images/carousel/1.png" alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="register.aspx"><img style="width:100%" src="themes/images/carousel/2.png" alt=""/></a>
				<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="register.aspx"><img src="themes/images/carousel/3.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="register.aspx"><img src="themes/images/carousel/4.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		   
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="register.aspx"><img src="themes/images/carousel/5.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="register.aspx"><img src="themes/images/carousel/6.png" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	  </div> 
</div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1">
<div class="span9">		
			<div class="well well-small">
			<h4>Featured Products <small class="pull-right">200+ featured products</small></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
<asp:Repeater ID="Repeater3" runat="server">
<ItemTemplate>

				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="product_details.aspx?pid=<%# Eval("pid") %>"><img src="<%# Eval("image") %>" alt=""></a>
					<div class="caption">
					  <h5><%# Eval("pbrand") %> <%# Eval("pname") %></h5>
					  <h4><a class="btn" href="product_details.aspx?pid=<%# Eval("pid") %>">VIEW</a> <span class="pull-right">RS <%# Eval("ofp") %></span></h4>
					</div>
				  </div>
				</li>

</ItemTemplate>
</asp:Repeater>
			  </ul>
			  </div>

			   <div class="item">
			  <ul class="thumbnails">

<asp:Repeater ID="Repeater2" runat="server">
<ItemTemplate>
				<li class="span3">
				  <div class="thumbnail">
					<a href="product_details.aspx?pid=<%# Eval("pid") %>"><img src="<%# Eval("image") %>" alt=""></a>
					<div class="caption">
					  <h5><%# Eval("pbrand") %> <%# Eval("pname") %></h5>
					  <h4><a class="btn" href="product_details.aspx?pid=<%# Eval("pid") %>">VIEW</a> <span class="pull-right">RS <%# Eval("ofp") %></span></h4>
					</div>
				  </div>
				</li>
</ItemTemplate>
</asp:Repeater>

			  </ul>
			  </div>

			  </div>
			  <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
			  <a class="right carousel-control" href="#featured" data-slide="next">›</a>
			  </div>
			  </div>
		</div>
		<h4>Latest Products </h4>
			  <ul class="thumbnails">

<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.aspx?pid=<%# Eval("pid") %>"><img style="height:200px;" src="<%# Eval("image") %>" alt=""/></a>
					<div class="caption">
					  <h5><%# Eval("pbrand") %> <%# Eval("pname") %></h5>
					  <p> 
						Lorem Ipsum is simply dummy text. 
					  </p>
					 
					  <h4 style="text-align:center"><a class="btn" href="product_details.aspx?pid=<%# Eval("pid") %>"> <i class="icon-zoom-in"></i></a> <a class="btn" href="product_details.aspx?pid=<%# Eval("pid") %>">Buy <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#"><%# Eval("ofp") %></a></h4>
					</div>
				  </div>
				</li>
</ItemTemplate>
</asp:Repeater>



			  </ul>	

		</div>
		</div>
	</div>
</div>
</form>
</asp:Content>



