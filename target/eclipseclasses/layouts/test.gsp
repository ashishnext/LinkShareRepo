<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Link Share"/></title>
    <link href="${resource(dir: "css", file: "bootstrap.css")}" rel="stylesheet">
    <style>
        #header {background-color: #00b3ee; text-align: left}
        #footer {background-color: #00b3ee; text-align: left}
    </style>

    <g:layoutHead/>
</head>

<body>
<div id="header">
    Header
</div>
<g:layoutBody/>

<div id="footer">
    Footer
</div>


</body>
</html>