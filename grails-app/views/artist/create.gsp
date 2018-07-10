<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<g:if test="${artist}">
    <form action="../update/${artist.id}" method="post" name="myForm" id="myForm">
</g:if>
<g:else>
    <form action="./create" method="post" name="myForm" id="myForm">
</g:else>

<div class="row" style="margin-top: 5%">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <h1 class="card-title">Alta Artista</h1>

                        <div class="form-group">
                            <label class="form-control-label" for="name">Nombre</label>
                            <input class="form-control" id="name" name="name" type="text" value="${artist ? artist.name : ""}" required>
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="description">Descripción</label>
                            <textarea class="form-control" rows="5" id="description"
                                      name="description">${artist ? artist.description : ""}</textarea>
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="picture">Foto (url, recomendación: 400x470px)</label>
                            <input class="form-control" id="picture" type="url" name="picture" required
                                   value="${artist ? artist.picture : ""}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="soundCloud">SoundCloud</label>
                            <input class="form-control" id="soundCloud" type="url" name="soundCloud"
                                   value="${artist ? artist.soundCloud : ""}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="instagram">Instagram</label>
                            <input class="form-control" id="instagram" type="url" name="instagram"
                                   value="${artist ? artist.instagram : ""}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="youtube">Youtube</label>
                            <input class="form-control" id="youtube" type="url" name="youtube"
                                   value="${artist ? artist.youtube : ""}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="facebook">Facebook</label>
                            <input class="form-control" id="facebook" type="url" name="facebook"
                                   value="${artist ? artist.facebook : ""}">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label" for="beatPort">BeatPort</label>
                            <input class="form-control" id="beatPort" type="url" name="beatPort"
                                   value="${artist ? artist.beatPort : ""}">
                        </div>

                        <div class="form-group" style="text-align: center">
                            <g:if test="${artist}">
                                <button class="btn btn-primary" id="submit">Modificar</button>
                            </g:if>
                            <g:else>
                                <button class="btn btn-primary" id="submit">Crear</button>
                            </g:else>
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