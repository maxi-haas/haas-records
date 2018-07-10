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

    <div class="row fondo_negro wow bounceInUp" data-wow-delay="0.0s">
        <div class="col-md-7 col-lg-7 wow bounceInUp" data-wow-delay="0.3s">

            <g:img class="img-responsive" dir="images" file="press1.jpg"/>
        </div>

        <div class="col-md-5 col-lg-5 wow bounceInUp" data-wow-delay="0.5s">
            <h3 style="text-align: left; color: #ffd6cc;">HAAS RECORDS <br/>AT PUEBLO LÍMITE</h3>

            <p>Since the year 2015 the label held a residence at one of the most important clubs in Buenos Aires, during the summer season you can catch our artists at this amazing place representing the sound of HAAS Records</p>
            <!--<div class="row">
					<div class="col-md-6">
						<a class="boton_salmon" href="#"><span style="text-align:left">READ MORE</span></a>
					</div>
					<div class="col-md-6" style="text-align:right;">
						SHARE  &nbsp
						<a href="#"><i class="fab fa-twitter" style="font-size:18px"></i></a> &nbsp
						<a href="#"><i class="fab fa-facebook" style="font-size:18px"></i></a>
					</div>
				</div>-->
        </div>
    </div>

    <div class="row fondo_negro wow bounceInUp" data-wow-delay="0.0s">
        <div class="col-md-7 col-lg-7 wow bounceInUp" data-wow-delay="0.3s">
            <g:img class="img-responsive" dir="images" file="press2.jpg"/>
        </div>

        <div class="col-md-5 col-lg-5 wow bounceInUp" data-wow-delay="0.5s">
            <h3 style="text-align: left; color: #ffd6cc;">MAXIMILIANO HAAS<br/>AT PALACIO ALSINA</h3>

            <p>Our label boss representing the brand at one of the oldest club in the city, with more than 20 meters of led screens going from the booth to the roof & a stunning sound system this club has hosted parties with artists like Richie Hawtin, Loco Dice, Dubfire, Solomun, Hernan Cattaneo, Luciano & many others.</p>
            <!--<div class="row">
					<div class="col-md-6">
						<a class="boton_salmon" href="#"><span style="text-align:left">READ MORE</span></a>
					</div>
					<div class="col-md-6" style="text-align:right;">
						SHARE  &nbsp
						<a href="#"><i class="fab fa-twitter" style="font-size:18px"></i></a> &nbsp
						<a href="#"><i class="fab fa-facebook" style="font-size:18px"></i></a>
					</div>
				</div>-->
        </div>
    </div>

    <g:render template="../banner_events"></g:render>

    <div class="row fondo_negro wow bounceInUp" data-wow-delay="0.0s">
        <div class="col-md-7 col-lg-7 wow bounceInUp" data-wow-delay="0.3s">
            <g:img class="img-responsive" dir="images" file="press3.jpg"/>
        </div>

        <div class="col-md-5 col-lg-5 wow bounceInUp" data-wow-delay="0.5s">
            <h3 style="text-align: left; color: #ffd6cc;">MAXIMILIANO HAAS<br/>PACHA BUENOS AIRES</h3>

            <p>During the years 2015 & 2016 Maximiliano was part of the international brand Pacha, performing regularly at the terrace he was able to define the label sound as we know it nowadays.</p>
            <!--<div class="row ">
					<div class="col-md-6">
						<a class="boton_salmon" href="#"><span style="text-align:left">READ MORE</span></a>
					</div>
					<div class="col-md-6" style="text-align:right;">
						SHARE  &nbsp
						<a href="#"><i class="fab fa-twitter" style="font-size:18px"></i></a> &nbsp
						<a href="#"><i class="fab fa-facebook" style="font-size:18px"></i></a>
					</div>
				</div>-->
        </div>
    </div>

</div> <!-- FIN CONTAINER -->

</body>

<g:render template="../foot"></g:render>