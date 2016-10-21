
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
    </title>

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
    <link href="${resource(dir: "font-awesome/fonts", file: "fontawesome-webfont.woff")}"/>
    <link href="${resource(dir: "font-awesome/fonts", file: "fontawesome-webfont.woff2")}"/>


    <script src="${resource(dir: 'js/theme/jquery', file: 'jquery.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme/', file: 'bootstrap.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme/', file: 'scrollreveal/scrollreveal.min.js')}"
            type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme/', file: 'magnific-popup/jquery.magnific-popup.min.js')}"
            type="text/javascript"></script>
    <script src="${resource(dir: 'js/theme', file: 'creative.js')}" type="text/javascript"></script>
    <script src="${resource(dir: "js/theme", file: "creative.min.js")} " type="text/javascript"></script>

    <g:layoutHead/>
</head>

<body>
<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        %{--<div class="navbar-header">--}%
            %{--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">--}%
                %{--<span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>--}%
            %{--</button>--}%
            %{--<a class="navbar-brand page-scroll" href="#page-top">Start Bootstrap</a>--}%
        %{--</div>--}%

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="page-scroll" href="${createLink(controller: "person", action: "checkTheme")}">Home</a>
                </li>
                <li>
                    <a class="page-scroll" href="${createLink(controller: "topic", action: "showTopics")}">Topics Created</a>
                </li>
                <li>
                    <a class="page-scroll" href="${createLink(controller: "subscription", action: "showSubscriptions")}">Subscribed Topics</a>
                </li>
                <li>
                    <a class="page-scroll" href="#contact">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

%{--<section class="bg-primary" id="about">--}%
    %{--<div class="container">--}%
        %{--<div class="row">--}%
            %{--<div class="col-lg-8 col-lg-offset-2 text-center">--}%
                %{--<h2 class="section-heading">Link Share</h2>--}%
                %{--<hr class="light">--}%
                %{--<p class="text-faded">Share the resources and check resources shared by other users</p>--}%
                %{--<a href="#services" class="page-scroll btn btn-default btn-xl sr-button">Get Started!</a>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</section>--}%

%{--<section class="no-padding" id="portfolio">--}%
    %{--<div class="container-fluid">--}%
        %{--<div class="row no-gutter popup-gallery">--}%
            %{--<div class="col-lg-4 col-sm-6">--}%
                %{--<a href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "1.jpg")}" class="portfolio-box">--}%
                    %{--<img src="${resource(dir: "images/theme/img/portfolio/thumbnails", file: "1.jpg")}" class="img-responsive" alt="">--}%
                    %{--<div class="portfolio-box-caption">--}%
                        %{--<div class="portfolio-box-caption-content">--}%
                            %{--<div class="project-category text-faded">--}%
                                %{--Category--}%
                            %{--</div>--}%
                            %{--<div class="project-name">--}%
                                %{--Project Name--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</a>--}%
            %{--</div>--}%
            %{--<div class="col-lg-4 col-sm-6">--}%
                %{--<a href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "2.jpg")}" class="portfolio-box">--}%
                    %{--<img src="${resource(dir: "images/theme/img/portfolio/thumbnails", file: "2.jpg")}" class="img-responsive" alt="">--}%
                    %{--<div class="portfolio-box-caption">--}%
                        %{--<div class="portfolio-box-caption-content">--}%
                            %{--<div class="project-category text-faded">--}%
                                %{--Category--}%
                            %{--</div>--}%
                            %{--<div class="project-name">--}%
                                %{--Project Name--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</a>--}%
            %{--</div>--}%
            %{--<div class="col-lg-4 col-sm-6">--}%
                %{--<a href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "3.jpg")}" class="portfolio-box">--}%
                    %{--<img src="${resource(dir: "images/theme/img/portfolio/thumbnails", file: "3.jpg")}" class="img-responsive" alt="">--}%
                    %{--<div class="portfolio-box-caption">--}%
                        %{--<div class="portfolio-box-caption-content">--}%
                            %{--<div class="project-category text-faded">--}%
                                %{--Category--}%
                            %{--</div>--}%
                            %{--<div class="project-name">--}%
                                %{--Project Name--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</a>--}%
            %{--</div>--}%
            %{--<div class="col-lg-4 col-sm-6">--}%
                %{--<a href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "4.jpg")}" class="portfolio-box">--}%
                    %{--<img src="${resource(dir: "images/theme/img/portfolio/thumbnails", file: "4.jpg")}" class="img-responsive" alt="">--}%
                    %{--<div class="portfolio-box-caption">--}%
                        %{--<div class="portfolio-box-caption-content">--}%
                            %{--<div class="project-category text-faded">--}%
                                %{--Category--}%
                            %{--</div>--}%
                            %{--<div class="project-name">--}%
                                %{--Project Name--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</a>--}%
            %{--</div>--}%
            %{--<div class="col-lg-4 col-sm-6">--}%
                %{--<a href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "5.jpg")}" class="portfolio-box">--}%
                    %{--<img src="${resource(dir: "images/theme/img/portfolio/thumbnails", file: "5.jpg")}" class="img-responsive" alt="">--}%
                    %{--<div class="portfolio-box-caption">--}%
                        %{--<div class="portfolio-box-caption-content">--}%
                            %{--<div class="project-category text-faded">--}%
                                %{--Category--}%
                            %{--</div>--}%
                            %{--<div class="project-name">--}%
                                %{--Project Name--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</a>--}%
            %{--</div>--}%
            %{--<div class="col-lg-4 col-sm-6">--}%
                %{--<a href="${resource(dir: "images/theme/img/portfolio/fullsize", file: "6.jpg")}" class="portfolio-box">--}%
                    %{--<img src="${resource(dir: "images/theme/img/portfolio/thumbnails", file: "6.jpg")}" class="img-responsive" alt="">--}%
                    %{--<div class="portfolio-box-caption">--}%
                        %{--<div class="portfolio-box-caption-content">--}%
                            %{--<div class="project-category text-faded">--}%
                                %{--Category--}%
                            %{--</div>--}%
                            %{--<div class="project-name">--}%
                                %{--Project Name--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</a>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%

</section>
%{--<aside class="bg-dark">--}%
    %{--<div class="container text-center">--}%
        %{--<div class="call-to-action">--}%
            %{--<h2>Free Download at Start Bootstrap!</h2>--}%
            %{--<a href="http://startbootstrap.com/template-overviews/creative/" class="btn btn-default btn-xl sr-button">Download Now!</a>--}%
            %{--<h3>Create Topic</h3>--}%
            %{--<g:form controller="topic" action="createTopic" class="form-horizontal">--}%
                %{--<div class="form-group">--}%
                    %{--<label for="topicname1" class="col-sm-2 control-label">Topic name</label>--}%

                    %{--<div class="col-sm-10">--}%
                        %{--<g:textField class="form-control" id="topicname1" name="topicName"--}%
                                     %{--placeholder="Enter topic name"/>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="form-group">--}%
                    %{--<label class="col-sm-2 control-label">Visibility</label>--}%

                    %{--<div class="col-sm-10">--}%
                        %{--<g:select name="visibility" class="form-control"--}%
                                  %{--from="${linkshare.Enums.Visibility.allVisibility()}"/>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="form-group">--}%
                    %{--<div class="col-sm-offset-2 col-sm-10">--}%
                        %{--<button type="submit" class="btn btn-default">Create</button>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</g:form>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</aside>--}%

<g:layoutBody ></g:layoutBody>

</body>
</html>