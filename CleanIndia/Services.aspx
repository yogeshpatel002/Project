<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="breadcrumbs2 banner4">
			<div class="container">
				<h1>Services</h1>
				<div class="sitemap2">
					<a href="Default.aspx">Home </a>  /  Services
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!-- end breadcrumbs -->
		<!-- content ================================================== -->
		<div id="content">
			<div style="width:85%;margin:auto">
            <div class="row">
                <div class="col-lg-2">
                    <h1></h1>
                </div>
            </div> 
           <div class="panel panel-success" style="text-align:center;">
               <div class="page-header">
                   <div class="panel-title"><h1>Complain Hear</h1></div>
                   </div>
               <div class="row" style="margin-bottom:10px">
                   <div class="col-lg-1">
                       <label>State<span style="color:red"> *</span></label>
                   </div>
                   <div class="col-lg-3">
                       <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                           
                       </asp:DropDownList>
                   </div>
                   <div class="col-lg-1">
                       <label>City <span style="color:red"> *</span></label>
                   </div>
                   <div class="col-lg-3">
                       <asp:DropDownList ID="ddlcity" runat="server" CssClass="form-control" AutoPostBack="false">
                           
                       </asp:DropDownList>
                   </div>
                   <div class="col-lg-2">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-success" Width="70px" OnClick="btnSearch_Click"/>
                  </div>
               </div>
               <div class="row">
                    <iframe id="iframe1" style="height:400px; width:97.5%;overflow:hidden;margin:inherit" frameborder="0"
                    scrolling="no" marginheight="0" marginwidth="0"
                    src="http://maps.google.com/?q='<%= map.ToString() %>';&iwloc=A&output=embed">
                </iframe>
               </div>

               <div class="row" style="padding-left:25px; padding-top:20px; padding-bottom:20px;">
                   <div class="col-lg-3">
                       <asp:FileUpload ID="FileUpload1" runat="server"/>  
                   </div>
                   <div class="col-lg-1">
                         <asp:Button ID="Button1" runat="server" Text="Upload Image" OnClick="btnupload_Click"/>   
                   </div>
               </div>
               <input type="hidden" id="complainid"/>
               <div class="row" style="margin:inherit;">
                   <div class="core-features">
				<div class="container">					
					<h2 class="maintitle white-color">Select Your Complain Type</h2>
                    <div class="row">                     
						<div class="col-md-4 mb30">
							<div class="ben-item" id="01" style="display:block;" onclick="displayone(this)">
								<div class="feat-text mb30">
                                    <img src="images/dead-animals.png" /><span>Dead-animals</span>
								</div>
							</div>
							<div class="ben-item" id="02" style="display:block; margin-left:54px;" onclick="displayone(this)">
                                <div class="feat-text mb30 ">
                                    <img src="images/dustbins-not-cleaned.png" /><span>Dustbins Not Cleaned</span>
                                </div>
							</div>
							<div class="ben-item" id="03" style="display:block; margin-left:20px;" onclick="displayone(this)">
                                <div class="feat-text mb30">
                                    <img src="images/garbage-dumps.png" /><span>Garbage Dumps</span>
                                </div>
							</div>
						</div>
						<div class="col-md-4 mb30">
                            <div class="ben-item"  id="04" style="display:block;" onclick="displayone(this)">
                                <div class="feat-text mb30">
                                    <img src="images/garbage-vehicle-not-arrived.png" /><span>Garbage Vehicle Not Arrived</span>
                                </div>    
                            </div>
                            <div class="ben-item"  id="05" style="display:block;" onclick="displayone(this)">
                                <div class="feat-text mb30">
                                    <img src="images/no-electricity-in-public-toilets.png" /><span>No Electricity In Public Toilets</span>
                                </div>   
                            </div>
                            <div class="ben-item" id="06" style="display:block;" onclick="displayone(this)">
                                <div class="feat-text mb30">
                                    <img src="images/no-water-supply-in-public-toilets.png" /><span>No Water Supply In Public Toilets</span>
                                </div>	
						    </div>
                        </div>
						<div class="col-md-4 mb30">
							<div class="ben-item" id="07" style="display:block;" onclick="displayone(this)">
                                <div class="feat-text mb30">
                                    <img src="images/public-toilets-blockage.png" /> <span>Public Toilets Blockage</span>
                                </div>	
							</div>
							<div class="ben-item">
                                <div class="feat-text mb30"  id="08" style="display:block;" onclick="displayone(this)">
                                    <img src="images/sweeping-not-done.png" /><span>Sweeping Not Done</span>
                                </div>	
							</div>
							<div class="ben-item">
                                <div class="feat-text mb30"  id="09" style="display:block;" onclick="displayone(this)">
                                    <img src="images/toilets-not-cleaned.png" /><span>Toilets Not cleaned</span>
                                </div>	
							</div>
						</div>
				</div>
			</div>
                        <script type="text/javascript">
                            function displayone(values) {                             
                                
                                document.getElementById("complainid").value = values.id;
                                alert(document.getElementById("complainid").value);
                                for(var i=1; i<=9 ;i++)
                                {
                                    if (i != values.id)
                                    {
                                    document.getElementById("0"+i).style.display = 'none';
                                    }
                                }
                            }
                            
                         </script>
			<!-- End Core Features -->

               </div>
                <div class="row" style="margin-top:20px; margin-left:20px;">
                    <div class="col-lg-2">
                        <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row" style="padding-left:34px; padding-top:20px;">
                    <div class="col-lg-2">
                       <asp:Label ID="lblmobileno" runat="server" Text="Mobile No *"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                          <asp:TextBox ID="txtmobilno" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6" style="margin-top:20px;">
                        <asp:Button ID="btnComplain" runat="server" Text="Register Complain" onclick="btnComplain_Click"/>
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-6">
                <asp:Image ID="imgsave" runat="server" /></div>
                   </div>
    </div>

		</div>
		<!-- End content -->

    <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="js/plugins-scroll.js"></script>
  	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/jquery.imagesloaded.min.js"></script>
	<script type="text/javascript" src="js/jquery.appear.js"></script>
	<script type="text/javascript" src="js/jquery.countTo.js"></script>
	<script src="js/jquery.easypiechart.js"></script>
	<script src="js/jquery.parallax.js"></script>
     <!-- jQuery KenBurn Slider  -->
    <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>

 	<!-- include jQuery + carouFredSel plugin -->
    <script type="text/javascript" src="js/jquery.carouFredSel.js"></script>

    <!-- optionally include helper plugins -->
    <script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>

	
    <!-- Style Switcher -->
	<script src="js/styleswitch.js"></script>
	<script src="js/style_switch_custom.js"></script>
</asp:Content>

