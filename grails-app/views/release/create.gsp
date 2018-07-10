<%@ page import="haas.records.Artist" %>
<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<g:if test="${release}">
    <form action="../update/${release.id}" method="post" name="myForm" id="myForm">
</g:if>
<g:else>
    <form action="./create" method="post" name="myForm" id="myForm">
</g:else>
<div class="row" style="margin-top: 5%">
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <g:if test="${release}">
                            <h1 class="card-title">Modificación Release</h1>
                        </g:if>
                        <g:else>
                            <h1 class="card-title">Alta Release</h1>
                        </g:else>


                        <div class="form-group">
                            <label class="form-control-label" for="name">Titulo</label>
                            <input class="form-control" id="name" name="name" type="text" required
                                   value="${release.name}">
                        </div>


                        <div class="form-group">
                            <label class="form-control-label" for="description">Descripción</label>
                            <textarea class="form-control" rows="5" id="description" name="description"
                                      required>${release.description}</textarea>
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
                            <label class="form-control-label" for="picture">Foto (url)</label>
                            <input class="form-control" id="picture" type="url" name="picture"
                                   value="${release.picture}" required>
                        </div>

                        <h3>Canciones:</h3>

                        <input style="display: none" class="form-control" id="song_quantity" type="number"
                               name="song_quantity" min="0" value="${release ? release.songs.size() : "1"}">

                        <g:if test="${release}">
                            <div id="songs">
                                <g:each var="song" in="${release.songs}" status="i">
                                    <div id="song">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="form-control-label" for="picture">Nombre</label>
                                                <input class="form-control" id="song-name" type="text"
                                                       name="song-name-${i + 1}"
                                                       required value="${song.name}">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="form-control-label" for="picture">Spotify</label>
                                                <input class="form-control" id="song-spotify" type="url"
                                                       name="song-spotify-${i + 1}" value="${song.spotify}">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="form-control-label" for="picture">SoundCloud</label>
                                                <input class="form-control" id="song-soundCloud" type="url"
                                                       name="song-soundCloud-${i + 1}" value="${song.soundCloud}">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="form-control-label" for="picture">Comprar</label>
                                                <input class="form-control" id="song-buy" type="url"
                                                       name="song-buy-${i + 1}"
                                                       value="${song.buy}">
                                            </div>
                                        </div>
                                    </div>
                                </g:each>
                            </div>
                        </g:if>
                        <g:else>

                            <div id="songs">
                                <div id="song">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="form-control-label" for="picture">Nombre</label>
                                            <input class="form-control" id="song-name" type="text" name="song-name-1"
                                                   required>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="form-control-label" for="picture">Spotify</label>
                                            <input class="form-control" id="song-spotify" type="url"
                                                   name="song-spotify-1">
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="form-control-label" for="picture">SoundCloud</label>
                                            <input class="form-control" id="song-soundCloud" type="url"
                                                   name="song-soundCloud-1">
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="form-control-label" for="picture">Comprar</label>
                                            <input class="form-control" id="song-buy" type="url" name="song-buy-1">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </g:else>

                        <div class="row">
                            <div class="form-group col-md-3 col-lg-offset-3" style="text-align: center">
                                <a class="btn btn-primary" id="add-song">Agregar cancion</a>
                            </div>

                            <div class="form-group col-md-3" style="text-align: center">
                                <a class="btn btn-primary" id="delete-song">Borrar cancion</a>
                            </div>
                        </div>

                        <div class="form-group" style="text-align: center">

                            <g:if test="${release}">
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

<script>
    var songs_quantity = ${release ? release.songs.size(): 1};

    $("#add-song").click(function () {
        songs_quantity += 1;
        $("#song_quantity").attr("value", songs_quantity);
        var new_song = $("#song").clone();
        new_song.find("input#" + "song-name").attr("name", "song-name-" + songs_quantity);
        new_song.find("input#" + "song-spotify").attr("name", "song-spotify-" + songs_quantity);
        new_song.find("input#" + "song-soundCloud").attr("name", "song-soundCloud-" + songs_quantity);
        new_song.find("input#" + "song-buy").attr("name", "song-buy-" + songs_quantity);
        new_song.appendTo("#songs");
    });

    $("#delete-song").click(function () {
        if (songs_quantity > 1) {
            $("#songs").children().last().remove();
            songs_quantity -= 1;
            $("#song_quantity").attr("value", songs_quantity);
        }
    });
</script>

<g:render template="../foot"></g:render>