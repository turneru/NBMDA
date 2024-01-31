<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="page_title" style="margin-bottom: 0;">
	<div class="container">
		<h1><%=PortalSettings.ActiveTab.Title %></h1>
	</div>
</div>						
<div id="body_content" class="map">
    <div id="map-top">
        <div class="sub_container">
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="ContentPane" runat="Server"></div>
                </div>
            </div>
        </div>
    </div>
	<div id="map-bottom">
        <script src="//cdnjs.cloudflare.com/ajax/libs/iframe-resizer/4.1.1/iframeResizer.min.js"></script>
        <style type="text/css">
            #MemberMapIframe{width: 1px;min-width: 100%;}
            #back2top {
                text-align: center;
                font-weight: 700;
                cursor: pointer;
                color: #32666E;
                font-family: "Montserrat", sans-serif;
                margin-top: -45px;
                position: absolute;
                right: 15px;
                display: none;
            }

            #back2top:hover {
                color: #C7B62E;
                text-decoration: underline;
            }

            #back2top i {
                background: #32666E;
                color: #fff;
                border-radius: 50%;
                width: 30px;
                height: 30px;
                line-height: 30px;
            }

        </style>
        <div id="map" style="text-align: center;">
            <iframe id="MemberMapIframe" src="https://nbmda-apps.dev.itswebs.com/Distributors/index.cfm" frameborder="0" scrolling="no" width="100%" height="2000"></iframe>
            <div id='back2top'>Back to Top</div> 
        </div>
        <script>
            
            iFrameResize({ log: true, onScroll: ({x,y}) => callback }, '#MemberMapIframe')

            // var myIframe = $('#MemberMapIframe');
            // myIframe.onload = function () {
            //     myIframe.contentWindow.scrollTo(0,800);
            // }
            var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;

            //$(document).ready(function(){
                if(isMobile) {	
                    $("#back2top").show();
                    $("#back2top").click(function(event){
                        event.preventDefault();
                        window.scroll({
                        	top: 2000,
                        	behavior: 'smooth'
                        });
                    }); 
                }
           // });
        </script>
    </div>
</div>
</main>
<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->