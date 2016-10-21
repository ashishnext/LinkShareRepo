<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="test">
    <title></title>
</head>

<body>

<div class="row">
    <div class="col-sm-12">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Topic</th>
                <th>Visibility</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>

            <g:if test="${topicList}">
                <g:each in="${topicList}" var="tl">
                    <tbody>
                    <tr>
                        <td><g:link controller="resource" action="showResources"
                                    params="[name: tl.topicName]">${tl.topicName}</g:link></td>
                        <td>${tl.visibility}</td>
                        <td><button type="button" class="btn-default"><g:link controller="topic" action="editTopic"
                                                                              params="[name: tl.id]">Edit</g:link></button>
                        </td>
                        <td><button type="button" class="btn-default"><g:link controller="topic"
                                                                              action="editTopic">Delete</g:link></button>
                        </td>
                    </tr>

                    </tbody>

                </g:each>

            </g:if>

        </table>
        <label class="col-sm-6">${flash.update}</label>
    </div>

</div>

<g:link controller="person" action="test">Home</g:link>

</body>
</html>