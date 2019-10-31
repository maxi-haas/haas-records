<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>
<div class="container">
    <div class="row about"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <br/>

            <h2>ABOUT HAAS RECORDS</h2>

            <p>HAAS records is a record label and event organization, founded in 2017 by Maximiliano Haas. Serving as a platform for talented producers who have affinity for house music and the use of new technologies to create hypnotic vibes.</p>
            <br/>
            <a class="boton_negro" href="../about">READ MORE</a>
        </div>
    </div> <!-- Fin row About -->

    <div class="row"><!-- row Artistas / News -->
        <div class="col-md-6 wow bounceInLeft" data-wow-delay="0.5s">
            <div class="borde">
                <h3 style="text-align: right; margin-top: 0px; padding-right: 15px; padding-top: 5px;"><a
                        href="../artists">ARTISTS</a></h3>
                <g:if test="${artist}">
                    <div class="artistas">
                        <a href="/artists/${artist.id}">
                            <img class="img-responsive" style="max-height: 470px" src="${artist.picture}">
                        </a>

                        <h3 style="text-align: center;">${artist.name}</h3>
                        <br/>
                    </div>
                </g:if>
            </div>
        </div>

        <div class="col-md-6 wow bounceInRight" data-wow-delay="0.5s">
            <div class="borde1">
                <h3 style="text-align: right; margin-top: 0px; padding-right: 15px; padding-top: 5px;"><a
                        style="color: white;" href="../press">PRESS</a></h3>

                <div class="noticias">
                    <g:if test="${press}">
                        <g:each var="news" in="${press}">
                            <h3 style="text-align: left; color: #ffd6cc;">
                                <i class="glyphicon glyphicon-play"></i>
                                ${news.title} <br>
                                ${news.subTitle}
                            </h3>

                            <p>${news.description.length() < 210 ? news.description : news.description[0..209]}</p>

                            <hr/>
                        </g:each>
                    </g:if>
                </div>
            </div><!-- Fin row Artistas / News -->
        </div>
    </div>


    <g:render template="../banner_events"></g:render>

    <div class="row"><!-- row Podcast / Realases -->
        <div class="col-md-6 wow bounceInLeft">
            <div class="borde">
                <h3 style="text-align: right; margin-top: 0px; padding-right: 15px; padding-top: 5px;"><a
                        href="../podcasts">PODCAST</a></h3>

                <div class="artistas">
                    <g:if test="${podcasts}">
                        <g:each var="podcast" in="${podcasts}">
                            <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>${podcast.title}<br/>
                            </strong>
                                <br/>${podcast.artist.name}</h3>

                            <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                                    src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/${podcast.soundCloud}&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
                            <br/>    <br/><br/>
                        </g:each>
                    </g:if>
                </div>
            </div>
        </div>

        <div class="col-md-6 wow bounceInRight">
            <div class="borde">
                <h3 style="text-align: right; margin-top: 0px; padding-right: 15px; padding-top: 5px;"><a
                        href="../releases">RELEASES</a></h3>

                <div class="artistas">
                    <g:if test="${release}">
                        <h3 style="text-align: left; text-transform: uppercase;"><strong>${release.artist.name.toUpperCase()}</strong><br/>
                            LET YOU KNOW EP</h3>
                        <img class="img-responsive" src="${release.picture}">
                        <br/>
                    </g:if>
                </div>

            </div>
        </div>
    </div><!-- Fin row Artistas / News -->

</div> <!-- FIN CONTAINER -->

</body>

<g:render template="../foot"></g:render>
