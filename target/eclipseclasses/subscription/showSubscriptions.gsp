<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>List of Subscribed topics</h1>

<g:if test="${listSubscriptions.topic}">
    <g:each in="${listSubscriptions.topic}" var="ls">
        <g:link controller="resource" action="showResources" params="[name:ls.topicName]">${ls.topicName}</g:link><br>
    </g:each>
</g:if>
<g:else>
    <p>No topic subscribed </p>
</g:else>
<br><br>

<g:link controller="person" action="landing"> Home </g:link>

</body>
</html>