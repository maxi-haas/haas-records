<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<div class="container">
    <div class="row press"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br/>

            <h2>ARTIST</h2>
        </div>
    </div> <!-- Fin row About -->

    <div class="col-md-6 col-lg-6">
        <div class="row">
            <img class="img-responsive" src="${artist.picture}"/>
        </div>
    </div>

    <div class="col-md-6 col-lg-6">
        <h1>${artist.name}</h1>
        <br/>

        <p style="text-align:justify;">${artist.description}</p>

        <hr/>

        <div class="row">
            <div class="col-md-12" style="text-align:right;">

                <g:if test="${artist.soundCloud}">
                    <a href="${artist.soundCloud}" target="_blank"><i class="fab fa-soundcloud"></i></a> &nbsp
                </g:if>

                <g:if test="${artist.facebook}">
                    <a href="${artist.facebook}" target="_blank"><i class="fab fa-facebook"></i></a>&nbsp
                </g:if>
                <g:if test="${artist.instagram}">
                    <a href="${artist.instagram}" target="_blank"><i class="fab fa-instagram"></i></a>&nbsp
                </g:if>
                <g:if test="${artist.youtube}">
                    <a href=${artist.youtube}" target="_blank"><i class="fab fa-youtube"></i></a>
                </g:if>
                <g:if test="${artist.beatPort}">
                    <a href="${artist.beatPort}" target="_blank"><g:img dir="images" file="beat_sobre.png"/></a>
                </g:if>
            </div>
        </div>
    </div>


    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: left;">
        <div class="row">
            <br/>

            <h3>ANOTHER ARTISTS</h3>
        </div>
    </div>

    <g:set var="maximiliano" value="${haas.records.Artist.findById(1)}"/>

    <div class="row">
        <div class="artista_int">
            <div class="col-md-3 col-lg-3">
                <div class="borde">
                    <div class="artistas">
                        <a href="../artists/1">
                            <img class="img-responsive" src="${maximiliano.picture}">
                        </a>
                            <h3 style="text-align: center;">${maximiliano.name.toUpperCase()}</h3>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</body>

<g:render template="../foot"></g:render>