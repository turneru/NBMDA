<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>	
<div id="home_body_content">
	<div id="hero">
		<div class="hero-rotator-btns">
			<div class="container"></div>
		</div>
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="hero-rotator">
					<div>
						<div class="slide-container slide01">
							<div class="container">
								<div class="row no-margin">
									<div class="col-md-5">
										<h1>Who We Are</h1>
										<div class="yellow-line"></div>
										<p>NBMDA is a trade association representing the leading wholesale distributors of specialty building materials for interiors including wood panels, decorative surfaces, cabinet hardware, finishes/stains and related woodworking production supplies.</p>
										<p><a class="button-secondary" href="/Membership">Become a Member</a></p>
									</div>
									<div class="col-md-7">
										<img src="<%= SkinPath %>images/homepage/slide01.png" class="img-responsive" alt="Who We Are" />
									</div>
								</div>	
							</div>
						</div>
					</div>
					<div>
						<div class="slide-container slide02">
							<div class="container">
								<div class="row no-margin">
									<div class="col-md-5">
										<h1>Annual Convention</h1>
										<div class="yellow-line"></div>
										<p>The NAFCD + NBMDA Annual Convention is the optimal opportunity to invest in the success of your business. At the convention, you have access to top distributors, suppliers and service providers.</p>
										<p><a class="button-secondary" href="https://www.distributorconvention.org/" target="_blank">Learn More</a></p>
									</div>
									<div class="col-md-7">
										<img src="<%= SkinPath %>images/homepage/slide02.png" class="img-responsive" alt="Annual Convention" />
									</div>
								</div>	
							</div>
						</div>
					</div>
					<div>
						<div class="slide-container slide03">
							<div class="container">
								<div class="row no-margin">
									<div class="col-md-5">
										<h1>Industry Intelligence</h1>
										<div class="yellow-line"></div>
										<p>Learn more from the experiences of distributor and manufacturer members through publications, press releases, reports, interviews and member exclusive data.</p>
										<p><a class="button-secondary" href="/Resources/Research-Center">Learn More</a></p>
									</div>
									<div class="col-md-7">
										<img src="<%= SkinPath %>images/homepage/slide03.png" class="img-responsive" alt="Industry Intelligence" />
									</div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>		
	</div>
	
	<div id="supporters">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="SupportersPane" runat="Server"></div>
				</div>
			</div>
		</div>	
	</div>
	<div id="channel">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="ChannelPane" runat="Server"></div>
				</div>
			</div>
		</div>	
	</div>
	<div id="testimonial">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="ContentPane" runat="Server"></div>
				</div>
			</div>
		</div>	
	</div>
	<div id="callouts">
		<div class="container">
			<div class="row no-margin">
				<div class="col-md-6 pr13">
					<div id="LeftPane" runat="Server" data-href="/Membership/Member-Map"></div>
				</div>
				<div class="col-md-6 pl13">
					<div id="RightPane" runat="Server" data-href="/Education-Training"></div>
				</div>
			</div>
		</div>	
	</div>
	<div id="benefits">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="BottomTopPane" runat="Server"></div>
				</div>
			</div>
			<div class="row box-row">
				<div class="box pr13"><img src="<%= SkinPath %>images/homepage/icon_orange.png" />
					<div id="BottomLeftPane" runat="Server">
						
					</div>
				</div>
				<div class="box pl6 pr6"><img src="<%= SkinPath %>images/homepage/icon_green.png" />
					<div id="BottomMiddlePane" runat="Server">
						
					</div>
				</div>
				<div class="box pl13"> <img src="<%= SkinPath %>images/homepage/icon_teal.png" />
					<div id="BottomRightPane" runat="Server">
						
					</div>
				</div>
			</div>
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="BottomPane" runat="Server"></div>
				</div>
			</div>
		</div>	
	</div>
</div>
</main>

<script>
	$('.hero-rotator').slick({
		autoplay: true,
		arrows: true,
		appendArrows: $(".hero-rotator-btns .container"),
		speed: 1000,
		autoplaySpeed: 5000
  	});

	// On before slide change
	$('.hero-rotator').on('beforeChange', function(){
		$('#hero .slick-next').fadeOut(25);
		$('#hero .slick-prev').fadeOut(25);
	});

	$('.hero-rotator').on('afterChange', function(){
		$('#hero .slick-next').fadeIn();
		$('#hero .slick-prev').fadeIn();
	});

	$('.sponsor-rotator').slick({
		speed: 1000,
		autoplay: true,
		autoplaySpeed: 3000,
		arrows: true,
		slidesToShow: 5,
		slidesToScroll: 1,
		responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
	});
//Add background color for categories
	$(document).ready(function() {
		$('.cc_article_card').each(function () {
			if ($(this).find(".cat-date span").hasClass("Insights")) {
				$(this).find(".article-info").css("background", "#AD5E27");
			} 	
			else if ($(this).find(".cat-date span").hasClass("Business")) {
				$(this).find(".article-info").css("background", "#159F86");
			} 
			else if ($(this).find(".cat-date span").hasClass("Leadership")) {
				$(this).find(".article-info").css("background", "#00789B");
			} 
			else if ($(this).find(".cat-date span").hasClass("Industry_Briefs")) {
				$(this).find(".article-info").css("background", "#7B4C25");
			} 
		});
	});
//Update Channel Connection to italics
	$(document).ready(function() {
		$('.cc_article_card').each(function () {
			var summary = $(this).find(".article-info p.summary").text();
			var summaryUpdated = summary.replace("Channel Connection", "<em>Channel Connection</em>");
			$(this).find(".article-info p.summary").html(summaryUpdated);
		});
	});
//Update Channel Connection to italics
$(document).ready(function() {
		$('.hero-rotator .slick-slide').each(function () {
			var h1Height = $(this).find("h1").height();
			if (h1Height > 36) {
				$(this).find("h1").css("margin-top", "21px");
			}
		});
	});

$("#dnn_LeftPane, #dnn_RightPane").click(function(){
	window.location = $(this).attr("data-href");
	return false;
}); 	
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->