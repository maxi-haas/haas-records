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
    </div>


    <g:render template="../banner_events"></g:render>
</body>

<g:render template="../foot"></g:render>