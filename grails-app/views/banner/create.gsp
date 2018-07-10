<%@ page import="haas.records.Artist" %>
<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<form action="./create" method="post" name="myForm" id="myForm">

    <div class="row" style="margin-top: 5%">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">

                            <h1 class="card-title">Modificar Banner</h1>

                            <div class="form-group">
                                <label class="form-control-label" for="title">Nombre</label>
                                <input class="form-control" id="title" name="title" type="text"
                                       value="${banner.title}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="picture">Imagen (recomendación 1170x215)</label>
                                <input class="form-control" id="picture" name="picture" type="url"
                                       value="${banner.picture}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="link">Link</label>
                                <input class="form-control" id="link" name="link" type="url" value="${banner.link}"
                                       required>
                            </div>

                            <div class="form-group" style="text-align: center">
                                <button class="btn btn-primary" id="submit">Modificar</button>
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