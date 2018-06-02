<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<form runat="server" id="form1">
<div class="span4">
		<h4>Opening Hours</h4>
			<h5> Monday - Friday</h5>
			<p>09:00am - 09:00pm<br/><br/></p>
			<h5>Saturday</h5>
			<p>09:00am - 07:00pm<br/><br/></p>
			<h5>Sunday</h5>
			<p>12:30pm - 06:00pm<br/><br/></p>
		</div>
		<div class="span4">
		<h4>Email Us</h4>
		<form class="form-horizontal">
        <fieldset>
          <div class="control-group">

            
                <asp:TextBox ID="TextBox1" runat="server" class="input-xlarge" placeholder="name" ></asp:TextBox>
             <!--  <input type="text" placeholder="name" class="input-xlarge"/>-->
           
          </div>
		   <div class="control-group">
            <asp:TextBox ID="TextBox2" runat="server" class="input-xlarge" placeholder="email"></asp:TextBox>
              <!-- <input type="text" placeholder="email" class="input-xlarge"/>-->
           
          </div>

          <div class="control-group">
            <asp:TextBox ID="TextBox4" runat="server" class="input-xlarge" TextMode="MultiLine" rows="3" placeholder="Adderess"></asp:TextBox>
              <!-- <textarea rows="3" id="textarea" class="input-xlarge"></textarea>-->
           
          </div>
            <asp:Button ID="Button1" runat="server" Text="Send" class="btn btn-large" 
                onclick="Button1_Click" />
           <!-- <button class="btn btn-large" type="submit">Send Messages</button>-->

        </fieldset>
      </form>
		</div>
	</div>
	<div class="row">
	<div class="span12">
	<br />
	
	</div>
	</div>
</div>
</div></form>
</asp:Content>

