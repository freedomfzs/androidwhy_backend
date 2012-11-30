<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <title>HelloWorld:<sitemesh:title/></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-store" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link href="${ctx}/static/css/bootstrap-cerulean.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }
    </style>

    <link type="image/x-icon" href="${ctx}/static/img/favicon.ico" rel="shortcut icon">
    <link href="${ctx}/static/js/jquery-validation/1.10.0/validate.css" type="text/css" rel="stylesheet" />

    <link href="${ctx}/static/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${ctx}/static/css/charisma-app.css" rel="stylesheet">
    <link href="${ctx}/static/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
    <link href='${ctx}/static/css/fullcalendar.css' rel='stylesheet'>
    <link href='${ctx}/static/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
    <link href='${ctx}/static/css/chosen.css' rel='stylesheet'>
    <link href='${ctx}/static/css/uniform.default.css' rel='stylesheet'>
    <link href='${ctx}/static/css/colorbox.css' rel='stylesheet'>
    <link href='${ctx}/static/css/jquery.cleditor.css' rel='stylesheet'>
    <link href='${ctx}/static/css/jquery.noty.css' rel='stylesheet'>
    <link href='${ctx}/static/css/noty_theme_default.css' rel='stylesheet'>
    <link href='${ctx}/static/css/elfinder.min.css' rel='stylesheet'>
    <link href='${ctx}/static/css/elfinder.theme.css' rel='stylesheet'>
    <link href='${ctx}/static/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='${ctx}/static/css/opa-icons.css' rel='stylesheet'>
    <link href='${ctx}/static/css/uploadify.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="${ctx}/static/js/jquery-1.7.2.min.js"></script>
    <!-- jquery-validation -->
    <script src="${ctx}/static/js/jquery-validation/1.10.0/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery-validation/1.10.0/messages_bs_zh.js" type="text/javascript"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon
    <link rel="shortcut icon" href="${ctx}/static/img/favicon.ico">
    -->
    <sitemesh:head/>

</head>

<body>
<!-- topbar starts -->
<%@ include file="/WEB-INF/layouts/header.jsp"%>
<!-- topbar ends -->
<div class="container-fluid">
<div class="row-fluid">

<!-- left menu starts -->
<%@ include file="/WEB-INF/layouts/left.jsp"%>
<!-- left menu ends -->

<noscript>
    <div class="alert alert-block span10">
        <h4 class="alert-heading">Warning!</h4>
        <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
    </div>
</noscript>

<div id="content" class="span10">
<!-- content starts -->


<div>
    <ul class="breadcrumb">
        <li>
            <a href="${ctx}">Home</a> <span class="divider">/</span>
        </li>
        <li>
            <a href="#"><sitemesh:title/></a>
        </li>
    </ul>
</div>

    <sitemesh:body/>

<!-- content ends -->
</div><!--/#content.span10-->
</div><!--/fluid-row-->

<hr>

<div class="modal hide fade" id="myModal">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>Settings</h3>
    </div>
    <div class="modal-body">
        <p>Here settings can be configured...</p>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <a href="#" class="btn btn-primary">Save changes</a>
    </div>
</div>

<!-- footer starts -->
<%@ include file="/WEB-INF/layouts/footer.jsp"%>
<!-- footer ends -->

</div><!--/.fluid-container-->

<!-- external javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- jQuery UI -->
<script src="${ctx}/static/js/jquery-ui-1.8.21.custom.min.js"></script>
<!-- transition / effect library -->
<script src="${ctx}/static/js/bootstrap-transition.js"></script>
<!-- alert enhancer library -->
<script src="${ctx}/static/js/bootstrap-alert.js"></script>
<!-- modal / dialog library -->
<script src="${ctx}/static/js/bootstrap-modal.js"></script>
<!-- custom dropdown library -->
<script src="${ctx}/static/js/bootstrap-dropdown.js"></script>
<!-- scrolspy library -->
<script src="${ctx}/static/js/bootstrap-scrollspy.js"></script>
<!-- library for creating tabs -->
<script src="${ctx}/static/js/bootstrap-tab.js"></script>
<!-- library for advanced tooltip -->
<script src="${ctx}/static/js/bootstrap-tooltip.js"></script>
<!-- popover effect library -->
<script src="${ctx}/static/js/bootstrap-popover.js"></script>
<!-- button enhancer library -->
<script src="${ctx}/static/js/bootstrap-button.js"></script>
<!-- accordion library (optional, not used in demo) -->
<script src="${ctx}/static/js/bootstrap-collapse.js"></script>
<!-- carousel slideshow library (optional, not used in demo) -->
<script src="${ctx}/static/js/bootstrap-carousel.js"></script>
<!-- autocomplete library -->
<script src="${ctx}/static/js/bootstrap-typeahead.js"></script>
<!-- tour library -->
<script src="${ctx}/static/js/bootstrap-tour.js"></script>
<!-- library for cookie management -->
<script src="${ctx}/static/js/jquery.cookie.js"></script>
<!-- calander plugin -->
<script src='${ctx}/static/js/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='${ctx}/static/js/jquery.dataTables.min.js'></script>

<!-- chart libraries start -->
<script src="${ctx}/static/js/excanvas.js"></script>
<script src="${ctx}/static/js/jquery.flot.min.js"></script>
<script src="${ctx}/static/js/jquery.flot.pie.min.js"></script>
<script src="${ctx}/static/js/jquery.flot.stack.js"></script>
<script src="${ctx}/static/js/jquery.flot.resize.min.js"></script>
<!-- chart libraries end -->

<!-- select or dropdown enhancer -->
<script src="${ctx}/static/js/jquery.chosen.min.js"></script>
<!-- checkbox, radio, and file input styler -->
<script src="${ctx}/static/js/jquery.uniform.min.js"></script>
<!-- plugin for gallery image view -->
<script src="${ctx}/static/js/jquery.colorbox.min.js"></script>
<!-- rich text editor library -->
<script src="${ctx}/static/js/jquery.cleditor.min.js"></script>
<!-- notification plugin -->
<script src="${ctx}/static/js/jquery.noty.js"></script>
<!-- file manager library -->
<script src="${ctx}/static/js/jquery.elfinder.min.js"></script>
<!-- star rating plugin -->
<script src="${ctx}/static/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="${ctx}/static/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="${ctx}/static/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="${ctx}/static/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="${ctx}/static/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="${ctx}/static/js/charisma.js"></script>


</body>
</html>
