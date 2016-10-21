<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="test">
    <title></title>

</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <ul class="nav nav-pills">
                <li role="presentation" class="active"><a
                        href="${createLink(controller: "topic", action: "showTopics")}">Topics created</a></li>
                <li role="presentation"><a
                        href="${createLink(controller: "subscription", action: "showSubscriptions")}">Subscribed topics</a>
                </li>
            </ul>
        </div>

        <div class="col-md-6">

        </div>
    </div>
    <br><br>

    <div class="row">
        <div class="col-md-6">
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
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Create</button>
                    </div>
                </div>
            </g:form>

            <label class="col-sm-6">${flash.message}</label>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
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
                        <g:textArea name="description" class="form-control" placeholder="Description for resource"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">Topic</label>

                    <div class="col-sm-10">
                        <g:select name="selectTopic" from="${topic.Topic.list()}" class="form-control" optionKey="id"
                                  optionValue="topicName"/>
                    </div>
                </div>

                <div class="form-group">
                   <div class="col-sm-offset-2 col-sm-10">
                       <button type="submit" class="btn btn-default">Share</button>
                   </div>
            </g:form>
            <label class="col-sm-6">${flash.msg}</label>
        </div>
        </div>
    </div>
</div>

</body>
</html>