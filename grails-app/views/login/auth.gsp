<html>
<head>
    <meta name="layout" content="check">

</head>

<body>

<div class="container-fluid bg-dark">
    <div class="row">
        <div class="col-md-3">

        </div>

        <div class="col-md-6">
            <aside class="bg-dark">
                <div class="text-center">
                    <div class="call-to-action">
                        <h3>Login to get started</h3>

                        <form method="POST" action="${resource(file: '/j_spring_security_check')}"
                              class="form-horizontal">
                            <div class="form-group">
                                <label for="username1" class="col-sm-2 control-label">Username</label>

                                <div class="col-sm-10">
                                    <g:textField class="form-control" id="username1" name="j_username"
                                                 placeholder="Enter username"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password1" class="col-sm-2 control-label">Password</label>

                                <div class="col-sm-10">
                                    <g:passwordField class="form-control" id="password1" name="j_password"
                                                     placeholder="Enter password"/>
                                </div>
                            </div>

                            <div class="form-group">
                                %{--<div class="col-sm-offset-2 col-sm-10">--}%
                                <button type="submit" class="btn btn-default">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </aside>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">

        </div>

        <div class="col-md-6">

            <aside class="bg-dark">
                <div class="text-center">
                    <div class="call-to-action">
                        <h3>SignUp</h3>
                        <g:form controller="person" action="register" class="form-horizontal">
                            <div class="form-group">
                                <label for="name1" class="col-sm-2 control-label">Name</label>

                                <div class="col-sm-10">
                                    <g:textField class="form-control" id="name1" name="name"
                                                 placeholder="Enter your name"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="username1" class="col-sm-2 control-label">Username</label>

                                <div class="col-sm-10">
                                    <g:textField class="form-control" id="username1" name="username"
                                                 placeholder="Enter Username"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password1" class="col-sm-2 control-label">Password</label>

                                <div class="col-sm-10">
                                    <g:passwordField class="form-control" id="password1" name="password"
                                                     placeholder="Enter Password"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="confirmPassword1" class="col-sm-2 control-label">Confirm Password</label>

                                <div class="col-sm-10">
                                    <g:passwordField class="form-control" id="confirmPassword1" name="confirmPassword"
                                                     placeholder="Confirm Password"/>
                                </div>
                            </div>

                            <div class="form-group">
                                %{--<div class="col-sm-offset-2 col-sm-10">--}%
                                <button type="submit" class="btn btn-default">Register</button>
                            </div>
                        </g:form>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</div>
</body>
</html>