<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Feedback
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
<div class="breadcrumbs2 banner2">
			<div class="container">
				<h1>FeedBack</h1>
				<div class="sitemap2">
					<a href="Default.aspx">Home </a>  /  About
				</div>
				<div class="clear"></div>
			</div>
		</div>
    <div class="blog-page container">
	    <div class="row">
            <!-- Blog Posts -->
			    <div class="col-lg-12 blog-post">
				    <div class="blog-single clearfix single-full">
					    <div class="blog-single-content">
						    <div class="leave-comment clearfix">
							    <h1 class="leftmain-title" style="text-align:center;">PLEASE GIVE YOUR FEEDBACK</h1>
								    <div class="leftmain-border"></div>
									    <p>Your email address will not be published. Required fields are marked *</p>
									        <%--<form action="#">--%>
										        <div class="row">
											        <div class="col-md-4">
                                                         <asp:TextBox ID="txtname" runat="server" placeholder="Name*"></asp:TextBox>
											        </div>
											        <div class="col-md-4">
                                                        <asp:TextBox ID="txtemail" runat="server" placeholder="Email"></asp:TextBox>
											        </div>
                                                    <div class="col-md-4">
                                                        <asp:TextBox ID="txtmobileno" runat="server"  placeholder="Mobile No*"></asp:TextBox>
											        </div>
											        <div class="col-md-12">
                                                        <asp:TextBox ID="txtsubject" runat="server"  placeholder="Subject*"></asp:TextBox>
											        </div>
										        </div>
                                                    <asp:TextBox ID="txtmessage" runat="server" placeholder="Message*" MaxLength="500" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                           
                                                    <asp:Button ID="feedbacksubmit" runat="server" Text="Submit" OnClick="feedbacksubmit_Click" />
									        <%--</form>--%>
							</div>							
						</div>
                    </div>
					<!-- End Signle Blog -->
				</div>
				<!-- End Blog Posts -->
            </div>
		</div>

    <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="js/plugins-scroll.js"></script>
  	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/jquery.imagesloaded.min.js"></script>
	<script type="text/javascript" src="js/jquery.appear.js"></script>
	<script type="text/javascript" src="js/jquery.countTo.js"></script>
	<script src="js/jquery.parallax.js"></script>
	<script src="js/Chart.js"></script>
     <!-- jQuery KenBurn Slider  -->

    <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>



	
    <!-- Style Switcher -->
	<script src="js/styleswitch.js"></script>
	<script src="js/style_switch_custom.js"></script>
</asp:Content>

