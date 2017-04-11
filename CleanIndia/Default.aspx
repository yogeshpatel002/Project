<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Clean India
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div id="container">

	<!-- Slider -->
	<div class="slider">
		<div class="fullwidthbanner-container">
			<div class="fullwidthbanner" id="intro">
				<ul>
					<!-- First SLIDE -->
					<li data-transition="3dcurtain-vertical" data-slotamount="10" data-masterspeed="100">
					    <!-- THE MAIN IMAGE IN THE FIRST SLIDE -->
                        <img src="images/banner1.jpg" alt="slide" />
					</li>
					<!-- Second SLIDE -->
					<li data-transition="random" data-slotamount="10" data-masterspeed="100">
					    <!-- THE MAIN IMAGE IN THE SECOND SLIDE -->
					    <img src="images/banner2.jpg" alt="slide">
					</li>
                    <li data-transition="random" data-slotamount="10" data-masterspeed="100">
                        <!-- THE MAIN IMAGE IN THE THIRD SLIDE -->
                        <img src="images/banner3.jpg" alt="slide">
                        <!-- THE CAPTIONS IN THIS SLDIE -->
                    </li>
                    <li data-transition="random" data-slotamount="10" data-masterspeed="100">
                        <!-- THE MAIN IMAGE IN THE FOUR SLIDE -->
                        <img src="images/banner4.jpg" alt="slide">
                        <!-- THE CAPTIONS IN THIS SLDIE -->
                    </li>
                    <li data-transition="random" data-slotamount="10" data-masterspeed="100">
                        <!-- THE MAIN IMAGE IN THE FIVE SLIDE -->
                        <img src="images/green.jpg" alt="slide">
                        <!-- THE CAPTIONS IN THIS SLDIE -->
                    </li>
                    <li data-transition="random" data-slotamount="10" data-masterspeed="100">
                        <!-- THE MAIN IMAGE IN THE SIX SLIDE -->
                        <img src="images/slide4.jpg" alt="slide">
                        <!-- THE CAPTIONS IN THIS SLDIE -->
                    </li>
                </ul>
			</div>
		</div>
	</div>
    </div>
	<!-- End SLider -->
	<!-- content ================================================== -->
		<div id="content">
			<div class="benefits">
                <marquee>
                    <nav class="ben-box">
                        <ui>
                            <li>
                                <div class="ben-div">
                                    <span>
                                        <img src="images/01.png" />
                                    </span>
                                    <span>
                                        <h3>Simplicity & ease of reporting</h3>
                                        <p>Citizens only need to take a picture of the civic-related <br />complaint and post it through their Swachhata app.</p>
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="ben-div">
                                    <span>
                                        <img src="images/02.png" />
                                    </span>
                                    <span>
                                        <h3>Locate the complaint with ease</h3>
                                        <p>The app can pinpoint the location of the complaint with accuracy using the geo <br /> location of the picture, which will lead to faster resolution of the complaint.</p>
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="ben-div">
                                    <span>
                                        <img src="images/03.png" />
                                    </span>
                                    <span>
                                        <h3>Regular complaint status updates</h3>
                                        <p>Citizens will get regular updates on the status of the complaint <br />in the form of a push notification.</p>
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="ben-div">
                                    <span>
                                        <img src="images/04.png" />
                                    </span>
                                    <span>
                                        <h3>Push notification when resolved</h3>
                                        <p>Citizens will get a push notification with the 'Resolved' image uploaded by the <br />sanitary inspector or engineer when they change the status to Resolved.</p>
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="ben-div">
                                    <span>
                                        <img src="images/05.png" />
                                    </span>
                                    <span>
                                        <h3>Reopen unresolved complaint</h3>
                                        <p>Citizens can reopen the complaint if they are not satisfied with <br />the resolution.</p>
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="ben-div">
                                    <span>
                                        <img src="images/06.png" />
                                    </span>
                                    <span>
                                        <h3>Provide feedback on complaints</h3>
                                        <p>As complaints get resolved, citizens can provide feedback on <br />the quality of the resolution.</p>
                                    </span>
                                </div>
                            </li>
                        </ui>
                    </nav>
                </marquee>
            </div>
        </div>

            <div class="awesome">
                <div class="container">
                    <h1>About Swachhata</h1>
                    <div style="float:left;">
                        <p style="color:white; width:500px; text-align:justify;">
                            The Swachhata application is a fourth generation complaint redressal mobile and web platform. It is a quantum leap in how complaints and grievances are being redressed by Municipal Corporations in India. This solution is for all the 4041 towns and cities of India.
                        </p>
                    </div>
                    <div style="float:left; padding-left:100px;">
                        <p style="color: white; width: 500px; text-align: justify;">
                            The Swachhata application fuses together a time-tested complaint redressal platform with the opportunity for citizens to work together on civic issues with community centric features for citizens to vote up on complaints, share them with other concerned citizens and comment on the work being done.
                        </p>
                    </div>
                </div>
            </div>

			<div class="core-features">
				<div class="container">
					<h1 class="maintitle white-color">Core Features</h1>
					<div class="mainborder"></div>
					
					<div class="row">                     
						<div class="col-md-4 mb30">
							<div class="ben-item">
								<div class="feat-text mb30">
                                    <img src="images/dead-animals.png" /><span>Dead-animals</span>
								</div>
							</div>
							<div class="ben-item">
                                <div class="feat-text mb30">
                                    <img src="images/dustbins-not-cleaned.png" /><span>Dustbins Not Cleaned</span>
                                </div>
							</div>
							<div class="ben-item">
                                <div class="feat-text mb30">
                                    <img src="images/garbage-dumps.png" /><span>Garbage Dumps</span>
                                </div>
							</div>
						</div>
						<div class="col-md-4 mb30">
                            <div class="ben-item">
                                <div class="feat-text mb30">
                                    <img src="images/garbage-vehicle-not-arrived.png" /><span>Garbage Vehicle Not Arrived</span>
                                </div>    
                            </div>
                            <div class="ben-item">
                                <div class="feat-text mb30">
                                    <img src="images/no-electricity-in-public-toilets.png" /><span>No Electricity In Public Toilets</span>
                                </div>   
                            </div>
                            <div class="ben-item">
                                <div class="feat-text mb30">
                                    <img src="images/no-water-supply-in-public-toilets.png" /><span>No Water Supply In Public Toilets</span>
                                </div>	
						    </div>
                        </div>
						<div class="col-md-4 mb30">
							<div class="ben-item">
                                <div class="feat-text mb30">
                                    <img src="images/public-toilets-blockage.png" /> <span>Public Toilets Blockage</span>
                                </div>	
							</div>
							<div class="ben-item">
                                <div class="feat-text mb30">

                                    <img src="images/sweeping-not-done.png" /><span>Sweeping Not Done</span>
                                </div>	
							</div>
							<div class="ben-item">
                                <div class="feat-text mb30">
                                    <img src="images/toilets-not-cleaned.png" /><span>Toilets Not cleaned</span>
                                </div>	
							</div>
						</div>
				</div>
			</div>
			<!-- End Core Features -->

			<div class="capabilities">
				<div class="container">
					<div class="statistic-box">
						<div class="row">
							<div class="col-md-3 mb20">
								<div class="statistic-post">
									<div class="statistic-counter">
                                        <i class="fa fa-file-text"></i>
										<p><span class="timer" data-from="0" data-to="1000"></span></p>
										<p>Total Complain</p>
									</div>
								</div>
							</div>

							<div class="col-md-3 mb20">
								<div class="statistic-post">
									<div class="statistic-counter">
                                        <i class="fa fa-file-text"></i>
										<p><span class="timer" data-from="0" data-to="800"></span></p>
										<p>Solved Complian</p>
									</div>
								</div>
							</div>

							<div class="col-md-3 mb20">
								<div class="statistic-post">
									<div class="statistic-counter">
										<i class="fa fa-file-text"></i>
										<p><span class="timer" data-from="0" data-to="200"></span></p>
										<p>Unsolved Complain</p>
									</div>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
			<!-- End Capabilities -->

			<div class="social-icons">
				<div class="container">
					<ul>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End content -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.superfish.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="js/plugins-scroll.js"></script>
  	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/jquery.imagesloaded.min.js"></script>
	<script type="text/javascript" src="js/jquery.appear.js"></script>
	<script type="text/javascript" src="js/jquery.countTo.js"></script>
	<script src="js/jquery.parallax.js"></script>
     <!-- jQuery KenBurn Slider  -->
    <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>


	<!--
	##############################
	 - ACTIVATE THE BANNER HERE -
	##############################
	-->
	<script type="text/javascript">

	    var tpj = jQuery;
	    tpj.noConflict();

	    tpj(document).ready(function () {

	        if (tpj.fn.cssOriginal != undefined)
	            tpj.fn.css = tpj.fn.cssOriginal;

	        var api = tpj('.fullwidthbanner').revolution(
				{
				    delay: 8000,
				    startwidth: 1170,
				    startheight: 900,

				    onHoverStop: "off",						// Stop Banner Timet at Hover on Slide on/off

				    thumbWidth: 100,							// Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
				    thumbHeight: 50,
				    thumbAmount: 3,

				    hideThumbs: 0,
				    navigationType: "bullet",				// bullet, thumb, none
				    navigationArrows: "solo",				// nexttobullets, solo (old name verticalcentered), none

				    navigationStyle: "round",				// round,square,navbar,round-old,square-old,navbar-old, or any from the list in the docu (choose between 50+ different item), custom


				    navigationHAlign: "center",				// Vertical Align top,center,bottom
				    navigationVAlign: "bottom",					// Horizontal Align left,center,right
				    navigationHOffset: 30,
				    navigationVOffset: 40,

				    soloArrowLeftHalign: "left",
				    soloArrowLeftValign: "center",
				    soloArrowLeftHOffset: 40,
				    soloArrowLeftVOffset: 0,

				    soloArrowRightHalign: "right",
				    soloArrowRightValign: "center",
				    soloArrowRightHOffset: 40,
				    soloArrowRightVOffset: 0,

				    touchenabled: "on",						// Enable Swipe Function : on/off


				    stopAtSlide: -1,							// Stop Timer if Slide "x" has been Reached. If stopAfterLoops set to 0, then it stops already in the first Loop at slide X which defined. -1 means do not stop at any slide. stopAfterLoops has no sinn in this case.
				    stopAfterLoops: -1,						// Stop Timer if All slides has been played "x" times. IT will stop at THe slide which is defined via stopAtSlide:x, if set to -1 slide never stop automatic

				    hideCaptionAtLimit: 0,					// It Defines if a caption should be shown under a Screen Resolution ( Basod on The Width of Browser)
				    hideAllCaptionAtLilmit: 0,				// Hide all The Captions if Width of Browser is less then this value
				    hideSliderAtLimit: 0,					// Hide the whole slider, and stop also functions if Width of Browser is less than this value


				    fullWidth: "on",

				    shadow: 1								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)

				});


	        // TO HIDE THE ARROWS SEPERATLY FROM THE BULLETS, SOME TRICK HERE:
	        // YOU CAN REMOVE IT FROM HERE TILL THE END OF THIS SECTION IF YOU DONT NEED THIS !
	        api.bind("revolution.slide.onloaded", function (e) {


	            jQuery('.tparrows').each(function () {
	                var arrows = jQuery(this);

	                var timer = setInterval(function () {

	                    if (arrows.css('opacity') == 1 && !jQuery('.tp-simpleresponsive').hasClass("mouseisover"))
	                        arrows.fadeOut(300);
	                }, 3000);
	            })

	            jQuery('.tp-simpleresponsive, .tparrows').hover(function () {
	                jQuery('.tp-simpleresponsive').addClass("mouseisover");
	                jQuery('body').find('.tparrows').each(function () {
	                    jQuery(this).fadeIn(300);
	                });
	            }, function () {
	                if (!jQuery(this).hasClass("tparrows"))
	                    jQuery('.tp-simpleresponsive').removeClass("mouseisover");
	            })
	        });
	        // END OF THE SECTION, HIDE MY ARROWS SEPERATLY FROM THE BULLETS
	    });
	</script>

	
    <!-- Style Switcher -->
	<script src="js/styleswitch.js"></script>
	<script src="js/style_switch_custom.js"></script>
</asp:Content>

