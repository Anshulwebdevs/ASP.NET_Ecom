<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<%
    
    if (Session["uname"] != null)
        Response.Redirect("index.aspx");
    
     %>
    <div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Home</a> <span class="divider">/</span></li>
		<li class="active">Registration</li>
    </ul>
	<div class="well">
    
    <form class="form-horizontal">


<%
    if (Request["msg"] != null)
    { %>
	<div class="alert alert-block alert-error fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
       <strong> <asp:Label ID="Label1" runat="server" Text="">
        <% Response.Write(Request["msg"]); %>
   </asp:Label></strong>
	 </div>	
<% }
     %>

		<h4>Login</h4>
<form id="form2" runat="server">
		<div class="control-group">
			<label class="control-label" for="uname">Username<sup>*</sup></label>
			<div class="controls">
			  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="pass">Password<sup>*</sup></label>
			<div class="controls">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
			  
			</div>
		 </div>

	<div class="control-group">
			<div class="controls">
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
                <asp:Button class="btn btn-large btn-success" ID="Button1" runat="server" 
                    Text="Login" onclick="Button1_Click" />
				<!--<input class="btn btn-large btn-success" type="submit" value="Register" /> -->
			</div>
		</div>	
	
    </div>
	<h3> Registration</h3>	
	<div class="well">
	<!--
	<div class="alert alert-info fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div>
	<div class="alert fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div>
	 <div class="alert alert-block alert-error fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply</strong> dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div> -->
	<form class="form-horizontal" >
		<h4>Your personal information</h4>

		<div class="control-group">
			<label class="control-label" for="inputFname1">Name <sup>*</sup></label>
			<div class="controls">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
			  <!--<input type="text" id="inputFname1" placeholder="First Name">-->
			</div>
		 </div>

		<div class="control-group">
		<label class="control-label" for="input_phno">Password<sup>*</sup></label>
		<div class="controls">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
		  <!--<input type="text" id="input_phno" placeholder="Phone Number">-->
		</div>
	  </div>	  
	  
		<div class="control-group">
			<label class="control-label" for="address">Address<sup>*</sup></label>
			<div class="controls">
                 <asp:TextBox ID="TextBox6" runat="server" Height="70px" Width="206px" TextMode="MultiLine"></asp:TextBox>   
               <!-- <textarea name="add" placeholder="Address" cols=36 rows=4></textarea>-->
			</div>
		</div>


	<div class="control-group">
			<div class="controls">
				&nbsp;
                
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
                <asp:Button class="btn btn-large btn-success" ID="Button2" runat="server" 
                    Text="Register" onclick="Button2_Click" />
				
			</div>
		</div>		
	</form></form>
</div>

</div>
</div>
</div>
</div>
<!-- MainBody End ============================= -->
</asp:Content>

