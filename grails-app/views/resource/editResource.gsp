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
            <h3>Edit Resource</h3>
            <g:form controller="resource" action="updateResource" class="form-horizontal">
                <div class="form-group">
                    <label for="url1" class="col-sm-2 control-label">Url</label>

                    <div class="col-sm-10">
                        <g:textField class="form-control" id="url1" name="url"
                                     placeholder="${linkResourceObj.url}"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Description</label>

                    <div class="col-sm-1">
                        <g:textArea name="description" placeholder="${linkResourceObj.description}"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Update</button>
                    </div>
                </div>
                <g:hiddenField name="id" value="${linkResourceObj.id}"/>
            </g:form>

        </div>

    </div>
    <label class="col-sm-offset-6 col-sm-12">${flash.message}</label>
    <g:link controller="person" action="checkTheme">Home</g:link>
</aside>
</body>
</html>