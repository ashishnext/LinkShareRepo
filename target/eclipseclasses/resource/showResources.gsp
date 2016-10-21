<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="test">
    <title></title>
</head>

<body>

<div class="row">
    <div class="col-sm-12">
        <g:if test="${resourceList}">
            <h3>Resources shared in the topic</h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Url</th>
                    <th>Description</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>


                <g:each in="${resourceList}" var="rl">
                    <tbody>
                    <tr>
                        <td><g:link controller="#" action="#" params="[id:rl.id]">${rl.url}</g:link></td>
                        <td>${rl.description}</td>
                        <td><button type="button" class="btn-default"><g:link controller="resource"
                                                                              action="editResource">Edit</g:link></button></td>
                        <td><button type="button" class="btn-default"><g:link controller="resource"
                                                                              action="">Delete</g:link></button></td>
                    </tr>
                    </tbody>
                </g:each>
            </table>
        </g:if>
        <g:else>
            No resources shared in the topic
        </g:else>
    </div>
</div>

<br><br>

<g:link controller="person" action="test">Home</g:link>

</body>
</html>