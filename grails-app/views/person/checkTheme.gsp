<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="check">
    <title></title>
</head>

<body>

<section class="bg-primary" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <h2 class="section-heading">Link Share</h2>
                <hr class="light">

                <p class="text-faded">Share the resources and check resources shared by other users</p>
                <a href="#services" class="page-scroll btn btn-default btn-xl sr-button">Get Started!</a>
            </div>
        </div>
    </div>
</section>


    <div class="row">
        <div class="col-md-6 text-center">
            <aside class="bg-dark">
            <div class="call-to-action">
                <h3>Create Topic</h3>
                <g:form controller="topic" action="createTopic" class="form-horizontal">
                    <div class="form-group">
                        <label for="topicname1" class="col-sm-2 control-label">Topic name</label>

                        <div class="col-sm-10">
                            <g:textField class="form-control" id="topicname1" name="topicName"
                                         placeholder="Enter topic name"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Visibility</label>

                        <div class="col-sm-10">
                            <g:select name="visibility" class="form-control"
                                      from="${linkshare.Enums.Visibility.allVisibility()}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        %{--<div class="col-sm-offset-2 col-sm-10">--}%
                        <button type="submit" class="btn btn-default">Create</button>
                    </div>
                    </div>
                </g:form>
                <label class="col-sm-offset-6 col-sm-12">${flash.message}</label>

            </aside>
        </div>

        <div class=" col-md-offset-6 text-center">
            <aside class="bg-success">
                <div class="call-to-action">
            <h2>Recent Topics Shared</h2>
            <g:if test="${userRoleObj.role.authority == "ROLE_ADMIN"}">
                <g:each in="${topic.Topic.recentTopicsAdmin()}" var="rta">
                    <p>${rta.topicName}</p>
                </g:each>
            </g:if>
                    <g:else>
                        <g:each in="${topic.Topic.recentTopicsClient()}" var="rtc">
                            <p>${rtc.topicName}</p>
                        </g:each>
                    </g:else>

                    </div>
            </aside>
        </div>
    </div>


    <div class="row">
        <div class="col-md-6 text-center">
            <aside class="bg-danger">
                <div class="call-to-action">
                    %{--<h2>Free Download at Start Bootstrap!</h2>--}%
                    %{--<a href="http://startbootstrap.com/template-overviews/creative/" class="btn btn-default btn-xl sr-button">Download Now!</a>--}%
                    <h3>Share Resource</h3>
                    <g:form controller="resource" action="createResource" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2">Link</label>

                            <div class="col-sm-10">
                                <g:textField name="link" class="form-control" placeholder="Enter resource link"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2">Description</label>

                            <div class="col-sm-10">
                                <g:textArea name="description" class="form-control"
                                            placeholder="Description for resource"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2">Topic</label>

                            <div class="col-sm-10">
                                <g:select name="selectTopic" from="${topic.Topic.list()}" class="form-control"
                                          optionKey="id"
                                          optionValue="topicName"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">Share</button>
                            </div>
                        </div>
                    </g:form>

                </div>


                %{--<label class="col-sm-6">${flash.msg}</label>--}%
            </aside>
        </div>
    </div>


</body>
</html>