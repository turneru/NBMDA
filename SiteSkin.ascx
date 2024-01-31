<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="page_title">
	<div class="container">
		<h1><%=PortalSettings.ActiveTab.Title %></h1>
	</div>
</div>						
<div id="body_content">
	<div class="sub_container">
		<div class="row">
			<div class="twelve columns">
				<div id="ContentPane" runat="Server"></div>
			</div>
		</div>
    </div>
</div>
</main>
<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->