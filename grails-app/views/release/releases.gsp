<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<div class="container">
    <div class="row press"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br/>

            <h2>RELEASES</h2>
        </div>
    </div> <!-- Fin row About -->


    <g:each var="release" in="${releases}">
        <div class="row" style="margin-top: 2%">
            <div class="col-md-6 col-lg-6">
                <div class="row">
                    <img class="img-responsive" src="${release.picture}"/>
                </div>
            </div>

            <div class="col-md-6 col-lg-6">
                <h3>
                    ${release.name.toUpperCase()}
                    <g:if test="${session.user}">
                        <span>
                            <a href="../releases/update/${release.id}">
                                <i class="fas fa-edit" style="color: black; font-size: 20px"></i>
                            </a>
                        </span>
                        <span>
                            <a onclick='sure("¿Seguro?", "../releases/delete/${release.id}")'>
                                <i class="fas fa-trash" style="color: black; font-size: 20px"></i>
                            </a>
                        </span>
                    </g:if>

                </h3>
                <h4>
                    ${release.artist.name.toUpperCase()}
                </h4>

                <p>
                    ${release.description}
                </p>
                <hr/>

                <g:each var="song" in='${release.songs.sort { it.id }}'>
                    <div class="row">
                        <div class="col-md-8">
                            <h5><strong>${song.name}</strong></h5>
                            <h6><em style="font-size:20px">${release.artist.name.toUpperCase()}</em></h6>
                        </div>

                        <div class="col-md-4" style="text-align:right;">
                            <a href="${song.soundCloud}" target="_blank"><i
                                    class="fab fa-soundcloud"></i>
                            </a> &nbsp

                            <a href="${song.spotify}"><i class="fab fa-spotify"></i>
                            </a>&nbsp

                            <a href=${song.buy} target="_blank"><i
                                    class="fas fa-shopping-cart"></i>
                            </a>
                        </div>
                    </div>
                    <hr style="padding: 0px;"/>
                </g:each>
            </div>
        </div>
    </g:each>


    <div class="row" style="margin-top: 2%">

        <div class="col-md-6 col-lg-6">
            <div class="row">
                <g:img class="img-responsive" dir="images" file="tolate_ep.jpg"/>
            </div>
        </div>

        <div class="col-md-6 col-lg-6">
            <h3>TOO LATE EP</h3>
            <h4>MAXIMILIANO HAAS</h4>

            <p>In this first release we have our label boss delivering two original cuts, starting with Soleil, he brings a fresh warm up track with some deep pads and a stunning bassline.<br/>
                The second track of the EP is called Too late, we can hear a huge house influence on this one, with the appearance of classic chords, a groovy bassline and Max's characteristic hypnotic melodies. <br/>
                And last but not least the release contains an amazing remix done by Junior Gee, in which he takes us on a rhythmic trip with his modulated drums and percussions preserving the concept of the original track.
            </p>
            <hr/>

            <div class="row">
                <div class="col-md-8">
                    <h5><strong>1. Soleil (Original Mix)</strong></h5>
                    <h6><em style="font-size:20px">Maximiliano Haas</em></h6>
                </div>

                <div class="col-md-4" style="text-align:right;">
                    <a href="https://soundcloud.com/haasrecords/soleil" target="_blank"><i
                            class="fab fa-soundcloud"></i>
                    </a> &nbsp
                    <a href="#"><i class="fab fa-spotify"></i></a>&nbsp
                    <a href="https://www.beatport.com/track/soleil-original-mix/10575388" target="_blank"><i
                            class="fas fa-shopping-cart"></i></a>
                </div>
            </div>
            <hr style="padding: 0px;"/>

            <div class="row">
                <div class="col-md-8">
                    <h5><strong>2. Too Late (Original Mix)</strong></h5>
                    <h6><em style="font-size:20px">Maximiliano Haas</em></h6>
                </div>

                <div class="col-md-4" style="text-align:right;">
                    <a href="https://soundcloud.com/haasrecords/too-late" target="_blank"><i
                            class="fab fa-soundcloud"></i>
                    </a> &nbsp
                    <a href="#"><i class="fab fa-spotify"></i></a>&nbsp
                    <a href="https://www.beatport.com/track/too-late-original-mix/10575389" target="_blank"><i
                            class="fas fa-shopping-cart"></i></a>
                </div>
            </div>
            <hr/>

            <div class="row">
                <div class="col-md-8">
                    <h5><strong>3. Too Late (Junior Gee Remix)</strong></h5>
                    <h6><em style="font-size:20px">Maximiliano Haas</em></h6>
                </div>

                <div class="col-md-4" style="text-align:right;">
                    <a href="https://soundcloud.com/haasrecords/too-late-junior-gee" target="_blank"><i
                            class="fab fa-soundcloud"></i></a> &nbsp
                    <a href="#"><i class="fab fa-spotify"></i></a>&nbsp
                    <a href="https://www.beatport.com/track/too-late-junior-gee-remix/10575390" target="_blank"><i
                            class="fas fa-shopping-cart"></i></a>
                </div>
            </div>
            <hr/>
        </div>
    </div>

    <g:render template="../banner_events"></g:render>
</div><!-- FIN CONTAINER -->

</body>

<g:render template="../foot"></g:render>