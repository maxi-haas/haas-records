<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>
<form action="/login" method="post" name="myForm" id="myForm">
    <div class="row" style="margin-top: 5%">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <h1 class="card-title">Login</h1>

                            <div class="form-group">
                                <label class="form-control-label" for="name">Nombre</label>
                                <input class="form-control" id="name" name="name" type="text">

                                <div class="invalid-feedback" style="display: none"
                                     id="userFeedback">Usuario no registrado</div>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="pass">Contraseña</label>
                                <input class="form-control" id="pass" type="password" name="password">

                                <div class="invalid-feedback" style="display: none"
                                     id="passFeedback">Contraseña incorrecta</div>
                            </div>

                            <div class="form-group" style="text-align: center">
                                <button class="btn btn-primary" id="submit">Entrar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

</body>

<g:render template="../foot"></g:render>