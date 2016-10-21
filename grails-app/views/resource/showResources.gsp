<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="check">
    <title></title>
</head>

<body>


<aside class="bg-danger">
    <div class="container text-center">
        <div class="call-to-action">
            %{--<h2>Free Download at Start Bootstrap!</h2>--}%
            %{--<a href="http://startbootstrap.com/template-overviews/creative/" class="btn btn-default btn-xl sr-button">Download Now!</a>--}%
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

            <g:if test="${resourceList}">
                <g:each in="${resourceList}" var="rl">
                    <tbody>
                    <tr>
                        <td><g:link controller="#" action="#">${rl.url}</g:link></td>
                        <td>${rl.description}</td>
                        <td><button type="button" class="btn-default"><g:link controller="resource"
                                                                              action="editResource"
                                                                              params="[id: rl.id]">Edit</g:link></button>
                        </td>
                        <td><button type="button" class="btn-default"><g:link controller="resource"
                                                                              action="deleteResource"
                                                                              params="[id: rl.id]">Delete</g:link></button>
                        </td>
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

        </div>

    </div>
    <label class="col-sm-offset-6 col-sm-12">${flash.message}</label>
    <g:link controller="person" action="checkTheme"> Home </g:link>
</aside>

</body>
</html>