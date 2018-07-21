<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>
<div class="container">
    <div class="row press"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br/>

            <h2>PRESS</h2>
        </div>
    </div> <!-- Fin row About -->

    <g:each var="news" in="${press}">
        <div class="row fondo_negro wow bounceInUp" data-wow-delay="0.0s">
            <div class="col-md-7 col-lg-7 wow bounceInUp" data-wow-delay="0.3s">

                <img class="img-responsive" src="${news.picture}"/>
            </div>

            <div class="col-md-5 col-lg-5 wow bounceInUp" data-wow-delay="0.5s">
                <h3 style="text-align: left; color: #ffd6cc;">${news.title}

                    <g:if test="${session.user}">
                        <span>
                            <a href="../press/update/${news.id}">
                                <i class="fas fa-edit" style="color: white; font-size: 20px"></i>
                            </a>
                        </span>
                        <span>
                            <a  onclick='sure("¿Seguro?","../press/delete/${news.id}")'>
                                <i class="fas fa-trash" style="color: white; font-size: 20px"></i>
                            </a>
                        </span>
                    </g:if>

                    <br/>${news.subTitle}
                </h3>

                <p>${news.description}</p>
            </div>
        </div>
    </g:each>

    <g:render template="../banner_events"></g:render>
    

</div> <!-- FIN CONTAINER -->

</body>

<g:render template="../foot"></g:render>