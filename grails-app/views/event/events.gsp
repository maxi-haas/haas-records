<!DOCTYPE html>

<g:render template="../head"></g:render>

<body>

<div class="container">
    <div class="row press"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br/>

            <h2>EVENTS</h2>
        </div>
    </div>

    <div class="row">
        <g:each var="event" in="${events}">
            <div class="col-md-6 col-lg-6">
                <img class="img-responsive" style="max-height: 470px; max-width: 470px; min-height: 470px; min-width: 470px" src="${event.picture}"/>

                <div class="fondo_events">
                    <h2>${event.title}

                        <g:if test="${session.user}">
                            <span>
                                <a href="../events/update/${event.id}">
                                    <i class="fas fa-edit" style="font-size: 20px; color: white"></i>
                                </a>
                            </span>
                            <span>
                                <a  onclick='sure("¿Seguro?","../events/delete/${event.id}")'>
                                    <i class="fas fa-trash" style="font-size: 20px; color: white"></i>
                                </a>
                            </span>
                        </g:if>
                    </h2>


                    <h2><strong>${event.subtitle}</strong></h2>

                    <h2><strong>${
                        event.date.format("dd.MMMM.yy").tokenize('.')[0] + "." + event.date.format("dd.MMMM.yy").tokenize('.')[1].toUpperCase() + "." + event.date.format("dd.MMMM.yy").tokenize('.')[2]

                    }</strong></h2>
                    <br/>

                    <p>${event.description}</p><br/>

                    <div class="row">
                        <div class="col-sm-12 col-md-6">
                            <a class="boton_salmon" href="${event.link}"
                               target="_blank"><span style="text-align:left">TICKETS & INFO</span></a>
                        </div>

                        <div class="col-sm-12 col-md-6" style="text-align:right;">
                            SHARE  &nbsp
                            <a href="${event.facebook}"><i class="fab fa-twitter" style="font-size:18px"></i></a> &nbsp
                            <a href="${event.facebook}"><i class="fab fa-facebook" style="font-size:18px"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </g:each>
    </div>

</div> <!-- FIN CONTAINER -->

</body>

<g:render template="../foot"></g:render>