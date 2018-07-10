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

                            <h1 class="card-title">Modificar Carrusel</h1>

                            <div class="form-group">
                                <label class="form-control-label" for="text1">Título 1</label>
                                <input class="form-control" id="text1" name="text1" type="text"
                                       value="${carousel.text_one}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="subtitle1">Subtítulo 1</label>
                                <input class="form-control" id="subtitle1" name="subtitle1" type="text"
                                       value="${carousel.subtitle_one}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="picture2">Imágen 1 (recomendación 1000x430)</label>
                                <input class="form-control" id="picture1" name="picture1" type="url"
                                       value="${carousel.img_one}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="link1">Link 1</label>
                                <input class="form-control" id="link1" name="link1" type="url"
                                       value="${carousel.link_one}"
                                       required>
                            </div>


                            <div class="form-group">
                                <label class="form-control-label" for="text2">Título 2</label>
                                <input class="form-control" id="text2" name="text2" type="text"
                                       value="${carousel.text_two}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="subtitle1">Subtítulo 2</label>
                                <input class="form-control" id="subtitle2" name="subtitle2" type="text"
                                       value="${carousel.subtitle_two}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="picture2">Imagen 2 (recomendación 1000x430)</label>
                                <input class="form-control" id="picture2" name="picture2" type="url"
                                       value="${carousel.img_two}"
                                       required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="link2">Link 2</label>
                                <input class="form-control" id="link2" name="link2" type="url"
                                       value="${carousel.link_two}"
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