<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>

    <link href="${resource(dir: "css", file: "menu.css")}" rel="stylesheet"/>
</head>

<body>
<h1>Dashboard</h1><br>

<nav>
    <ul>
        <li><a href="${createLink(controller: "topic", action: "showTopics")}">Topics Created</a></li>
        <li><a href="${createLink(controller: "subscription", action: "showSubscriptions")}">Subscribed Topics</a></li>
    </ul>
</nav>

<br><br>

<h3>Create Topic</h3><br>

<g:form controller="" action="">
    Name: <g:textField name="topicName"/><br>
    Topic: <g:select name="visibility" from="${linkshare.Enums.Visibility.allVisibility()}"/><br>
    <g:submitButton name="Create"/>
</g:form>
<br>
<p>${flash.message}</p>
<br><br>

<h3>Share a resource</h3><br>

<g:form controller="resource" action="createResource">
    Link: <g:textField name="link"/><br>
    Description: <g:textArea name="description" rows="2" cols="15"/><br>
    Topic: <g:select name="selectTopic" from="${topic.Topic.list()}"
                     optionKey="id" optionValue="topicName"/>
    <br>
    <g:submitButton name="Share"/>
</g:form>
<br>
<p>${flash.msg}</p>


</body>
</html>