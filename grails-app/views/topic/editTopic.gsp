<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="check">
    <title></title>
</head>

<body>

<aside class="bg-dark">
    <div class="container text-center">
    <div class="call-to-action">
        %{--<h2>Free Download at Start Bootstrap!</h2>--}%
        %{--<a href="http://startbootstrap.com/template-overviews/creative/" class="btn btn-default btn-xl sr-button">Download Now!</a>--}%
        <h3>Edit Topic</h3>
        <g:form controller="topic" action="updateTopic" class="form-horizontal">
            <div class="form-group">
                <label for="topicname1" class="col-sm-2 control-label">Topic name</label>

                <div class="col-sm-10">
                    <g:textField class="form-control" id="topicname1" name="topicName" value="${topicObj.topicName}"
                                 placeholder="${topicObj.topicName}"/> <g:hasErrors
                            bean="${topicError}"></g:hasErrors><g:renderErrors bean="${topicError}"
                                                                               field="topicName"
                                                                               as="list"></g:renderErrors>
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
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Update</button>
                </div>
            </div>
            <g:hiddenField name="id" value="${topicObj.id}"/>
        </g:form>

    </div>

</div>
    <label class="col-sm-offset-6 col-sm-12">${flash.message}</label>
</aside>



%{--<div class="container">--}%
    %{--<div class="row">--}%
        %{--<div class="col-sm-6">--}%
            %{--<h3>Edit Topic</h3>--}%
            %{--<g:form controller="topic" action="updateTopic" class="form-horizontal">--}%
                %{--<div class="form-group">--}%
                    %{--<label for="topicname1" class="col-sm-2 control-label">Topic name</label>--}%

                    %{--<div class="col-sm-10">--}%
                        %{--<g:textField class="form-control" id="topicname1" name="topicName" value="${topicObj.topicName}"--}%
                                     %{--placeholder="${topicObj.topicName}"/> <g:hasErrors--}%
                                %{--bean="${topicError}"></g:hasErrors><g:renderErrors bean="${topicError}"--}%
                                                                                   %{--field="topicName"--}%
                                                                                   %{--as="list"></g:renderErrors>--}%
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
                        %{--<button type="submit" class="btn btn-default">Update</button>--}%
                    %{--</div>--}%
                %{--</div>--}%
                %{--<g:hiddenField name="id" value="${topicObj.id}"/>--}%
            %{--</g:form>--}%

        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%

</body>
</html>