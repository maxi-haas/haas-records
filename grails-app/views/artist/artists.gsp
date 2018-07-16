<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<div class="container">
    <div class="row"> <!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br />
            <h2>ARTISTS</h2>
        </div>
    </div>



    <div class="row artista_int">
        <g:each var="artist" in="${artists}">
            <div class="col-md-4 col-lg-4">
                <div class="borde" style="min-height: 440px; max-height: 440px">
                    <div class="artistas">
                        <a href="../artists/${artist.id}">
                            <img class="img-responsive" style="height: 10%" src="${artist.picture}">
                        </a>
                        <h3 style="text-align: center;">${artist.name.toUpperCase()}</h3>
                        <g:if test="${session.user}">
                            <span>
                                <a href="../artists/update/${artist.id}">
                                    <i class="fas fa-edit" style="color: black; font-size: 20px"></i>
                                </a>
                            </span>
                            <span>
                                <a  onclick='sure("¿Seguro? Se borraran todos los albumnes y canciones del artista","../artists/delete/${artist.id}")'>
                                    <i class="fas fa-trash" style="color: black; font-size: 20px"></i>
                                </a>
                            </span>
                        </g:if>
                    </div>
                </div>
            </div>
        </g:each>
    </div>



    <g:render template="../banner_events"></g:render>

</div> <!-- FIN CONTAINER -->


</body>



<g:render template="../foot"></g:render>