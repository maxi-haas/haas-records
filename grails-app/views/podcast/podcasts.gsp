<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>
<div class="container">
    <div class="row"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br/>

            <h2>PODCAST</h2>
        </div>
    </div>

    <div class="row podcast">

        <g:each var="podcast" in="${podcasts}">
            <div class="col-md-6 col-lg-6">
                <div class="borde" style="min-height: 291px; max-height: 291px">
                    <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>${podcast.title}<br></strong>${podcast.artist.name}

                        <g:if test="${session.user}">
                            <span>
                                <a href="../podcasts/update/${podcast.id}">
                                    <i class="fas fa-edit" style="color: black; font-size: 20px"></i>
                                </a>
                            </span>
                            <span>
                                <a onclick='sure("¿Seguro?", "../podcasts/delete/${podcast.id}")'>
                                    <i class="fas fa-trash" style="color: black; font-size: 20px"></i>
                                </a>
                            </span>
                        </g:if>

                    </h3>

                    <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                            src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/${podcast.soundCloud}&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
                </div>
            </div>
        </g:each>


        <div class="col-md-6 col-lg-6">
            <div class="borde">
                <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>Live @ Pueblo Limite 22.01.17<br/>
                    Warm up for Franco Cinelli</strong><br/>MAXIMILIANO HAAS</h3>

                <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/309018489&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
            </div>
        </div>

        <div class="col-md-6 col-lg-6">
            <div class="borde" >
                <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>
                    Recorded live @ Glow on ink anniversary. Warm up for Dubfire</strong><br/>
                    MAXIMILIANO HAAS</h3>
                <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/292260009&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
            </div>
        </div>
    </div>

    <div class="row podcast">
        <div class="col-md-6 col-lg-6">
            <div class="borde" >
                <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>
                    Maximiliano Haas Guest mix for DJs Playground<br/>@Pioneer DJ Radio</strong></h3>

                <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/297538186&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
            </div>
        </div>

        <div class="col-md-6 col-lg-6">
            <div class="borde">
                <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;">
                    <strong>Recorded Live @ Bahrein<br/></strong>
                    <br/>
                    MAXIMILIANO HAAS</h3>

                <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/318402058&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
            </div>
        </div>
    </div>

    <div class="row podcast">
        <div class="col-md-6 col-lg-6">
            <div class="borde">
                <h3 style="text-align: left; margin-top: 0px; text-transform: uppercase;"><strong>
                    PIVCAST 022 <br/>MAXIMILIANO HAAS</strong></h3>

                <iframe width="100%" height="160" scrolling="no" frameborder="no" allow="autoplay"
                        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/442052826&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>
            </div>
        </div>

    </div>

    <g:render template="../banner_events"></g:render>
</body>

<g:render template="../foot"></g:render>