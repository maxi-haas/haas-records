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
                <g:else>
                    <div class="artistas">
                        <a href="../artist_int">
                            <g:img class="img-responsive" dir="images" file="/artistas/juniorgee.jpg"/>
                        </a>

                        <h3 style="text-align: center;">JUNIOR GEE</h3>
                        <br/>
                    </div>
                </g:else>
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
                                ${news.title}
                            </h3>

                            <p>${news.description.length() < 210 ? news.description : news.description[0..209]}</p>

                            <hr/>
                        </g:each>
                    </g:if>
                    <g:else>

                        <h3 style="text-align: left; color: #ffd6cc;">
                            <i class="glyphicon glyphicon-play"></i>
                            HAAS RECORDS AT PUEBLO LÍMITE
                        </h3>

                        <p>Since the year 2015 the label held a residence at one of the most important clubs in Buenos Aires, during the summer season you can catch our artists at this amazing place representing the sound of HAAS Records</p>

                        <hr/>

                        <h3 style="text-align: left; color: #ffd6cc;">
                            <i class="glyphicon glyphicon-play"></i>
                            MAXIMILIANO HAAS AT PALACIO ALSINA
                        </h3>

                        <p>
                            Our label boss representing the brand at one of the oldest club in the city, with more than 20 meters of led screens going from the booth to the roof & a stunning sound system this club has hosted parties with artists like Richie Hawtin, Loco Dice, Dubfire, Solomun, Hernan Cattaneo, Luciano & many others.
                        </p>
                        <hr/>

                        <h3 style="text-align: left; color: #ffd6cc;">
                            <i class="glyphicon glyphicon-play"></i>
                            MAXIMILIANO HAAS PACHA BUENOS AIRES
                        </h3>

                        <p>During the years 2015 & 2016 Maximiliano was part of the international brand Pacha, performing regularly at the terrace he was able to define the label sound as we know it nowadays.</p>
                        <hr/>
                    </g:else>

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
                    <g:else>

                        <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>Live @ Pueblo Limite 22.01.17<br/>
                            Warm up for Franco Cinelli</strong><br/>MAXIMILIANO HAAS</h3>

                        <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                                src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/309018489&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
                        <br/>    <br/><br/>

                        <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>
                            Recorded live @ Glow on ink anniversary. Warm up for Dubfire</strong><br/>
                            MAXIMILIANO HAAS</h3>
                        <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                                src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/292260009&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
                    </g:else>
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
                            TOO LATE EP</h3>
                        <img class="img-responsive" src="${release.picture}">
                        <br/>
                    </g:if>

                    <g:else>
                        <h3 style="text-align: left; text-transform: uppercase;"><strong>MAXIMILIANO HAAS</strong><br/>
                            TOO LATE EP</h3>
                        <g:img class="img-responsive" dir="images" file="tolate_ep.jpg"/>
                        <br/>
                    </g:else>
                </div>

            </div>
        </div>
    </div><!-- Fin row Artistas / News -->

</div> <!-- FIN CONTAINER -->

</body>

<g:render template="../foot"></g:render>