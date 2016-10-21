<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Link Share"/></title>
    <link href="${resource(dir: "css/theme", file: "creative.css")}" rel="stylesheet"/>
    <link href="${resource(dir: "css/theme", file: "bootstrap.css")}" rel="stylesheet"/>
    <link href="${resource(dir: "font-awesome/css/", file: "font-awesome.css")}" rel="stylesheet"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: "css/theme", file: "magnific-popup.css")}" rel="stylesheet"/>
    <link href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "1.jpg")}" >
    <link href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "2.jpg")}" >
    <link href="${resource(dir: "images/theme/img/portfolio/thumbnails", file: "2.jpg")}" >



        <script src="${resource(dir: 'js/theme/jquery', file: 'jquery.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme/', file: 'bootstrap.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme/', file: 'scrollreveal/scrollreveal.min.js')}"
            type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme/', file: 'magnific-popup/jquery.magnific-popup.min.js')}"
            type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme', file: 'creative.js')}" type="text/javascript"></script>
    <script src="${resource(dir: "js/theme", file: "creative.min.js")} " type="text/javascript"></script>

    <style>
    #header {
        background-color: yellowgreen;
        text-align: left;
    }

    #footer {
        background-color: yellowgreen;
        text-align: left
    }
    </style>

    <g:layoutHead/>
</head>

<body>



<div id="header">
    <div class="row">
        <div class="col-md-6">
            <h2>Link Share</h2>
        </div>

        <div class="col-md-offset-10 col-md-12">
            <button type="button" class="btn-default"><g:link controller="logout">Logout</g:link></button>
        </div>

    </div>

    <ul class="nav nav-pills">
        <li role="presentation" class="active"><a
                href="${createLink(controller: "person", action: "test")}"><b>Home</b></a></li>
        <li role="presentation" class="active"><a
                href="${createLink(controller: "topic", action: "showTopics")}"><b>Topics created</b></a></li>
        <li role="presentation" class="active"><a
                href="${createLink(controller: "subscription", action: "showSubscriptions")}"><b>Subscribed topics</b>
        </a>
        </li>

    </ul>

</div>
<g:layoutBody/>

<div id="footer">
</div>

</body>
</html>