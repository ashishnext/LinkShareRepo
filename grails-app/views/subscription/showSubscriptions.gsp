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
        <table class="table">
            <thead>
            <tr>
                <th>Topic</th>
                <th>Visibility</th>
            </tr>
            </thead>

            <g:if test="${listSubscriptions}">
                <g:each in="${listSubscriptions}" var="ls">
                    <tbody>
                    <tr>
                        <td><g:link controller="resource" action="showResources"
                                    params="[name: ls.topic.topicName]">${ls.topic.topicName}</g:link></td>
                        <td>${ls.topic.visibility}</td>

                    </tr>
                    </tbody>

                </g:each>

            </g:if>

        </table>
        <label class="col-sm-6">${flash.update}</label>

    </div>

</div>
    <label class="col-sm-offset-6 col-sm-12">${flash.message}</label>
    <g:link controller="person" action="checkTheme"> Home </g:link>
</aside>

</body>
</html>