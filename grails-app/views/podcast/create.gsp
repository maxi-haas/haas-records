<%@ page import="haas.records.Artist" %>
<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<g:if test="${podcast}">
    <form action="../update/${podcast.id}" method="post" name="myForm" id="myForm">
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
                            <g:if test="${podcast}">
                                <h1 class="card-title">Modificar Podcast</h1>
                            </g:if>
                            <g:else>
                                <h1 class="card-title">Alta Podcast</h1>
                            </g:else>


                            <div class="form-group">
                                <label class="form-control-label" for="name">Nombre</label>
                                <input class="form-control" id="name" name="name" type="text" value="${podcast.title}" required>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="artists">Artista
                                    <input list="artists" name="artist" required ></label>
                                <datalist id="artists">
                                    <g:each var="artist" in="${haas.records.Artist.findAll()}">
                                        <option value="${artist.name}">
                                    </g:each>
                                </datalist>
                            </div>

                            <div class="form-group">
                                <label class="form-control-label" for="picture">SoundCloud (url)</label>
                                <input class="form-control" id="picture" type="number" name="soundCloud" value="${podcast.soundCloud}" required>
                            </div>

                            <div class="form-group" style="text-align: center">
                                <g:if test="${podcast}">
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