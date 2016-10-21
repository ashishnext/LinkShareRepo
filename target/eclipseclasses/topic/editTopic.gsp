<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="test">
    <title></title>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <h3>Edit Topic</h3>
            <g:form controller="topic" action="updateTopic" class="form-horizontal">
                <div class="form-group">
                    <label for="topicname1" class="col-sm-2 control-label">Topic name</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="topicname1" name="topicName"
                                     placeholder="${topicObj.topicName}"/>
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
</div>

</body>
</html>