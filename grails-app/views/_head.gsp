<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>HAAS RECORDS</title>
    <link rel="alternate" hreflang="es" href=""/>
    <link rel="shortcut icon" type="image/x-icon" href="${createLinkTo(dir: 'images', file: 'favicon.ico')}">

    <asset:stylesheet src="normalize.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="royalslider.css"/>
    <asset:stylesheet src="rs-minimal-white.css"/>
    <asset:stylesheet src="main.css"/>
    <asset:stylesheet src="fonts.css"/>
    <asset:stylesheet src="main_queries.css"/>

    <asset:javascript src="vendor/modernizr-2.6.2.min"/>

    <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Barlow+Semi+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css"
          integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script type="text/javascript">
        function rotate(angle) {
            var rotation = Math.PI * angle / 360;
            var costheta = Math.cos(rotation);
            var sintheta = Math.sin(rotation);
            if (!window.ActiveXObject) {
                this.style.position = 'absolute';
                this.style.webkitTransform = 'rotate(' + angle + 'deg)';
                this.style.khtmlTransform = 'rotate(' + angle + 'deg)';
                this.style.MozTransform = 'rotate(' + angle + 'deg)';
                this.style.OTransform = 'rotate(' + angle + 'deg)';
                this.style.transform = 'rotate(' + angle + 'deg)';
            } else {
                this.style.filter = "progid:DXImageTransform.Microsoft.Matrix(sizingMethod='auto expand')";
                this.filters.item(0).M11 = costheta;
                this.filters.item(0).M12 = -sintheta;
                this.filters.item(0).M21 = sintheta;
                this.filters.item(0).M22 = costheta;
                this.style.top = ((this.parentNode.offsetHeight / 2) - (this.offsetHeight / 2)) + 'px';
                this.style.left = ((this.parentNode.offsetWidth / 2) - (this.offsetWidth / 2)) + 'px';
            }
        }

        var ns = {}
        onload = function () {
            (function () {
                document.getElementById('im').onmouseover = function () {
                    var _this = this;
                    ns.angulo = ns.angulo || 0;
                    ns.timmer = setInterval(function () {
                        rotate.call(_this, ns.angulo += 5)
                    }, 30);
                }
                document.getElementById('im').onmouseout = function () {
                    clearInterval(ns.timmer);
                }
            })();
        }
    </script>


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-118970829-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-118970829-1');
    </script>

    <asset:javascript src="utils.js"/>
</head>


<script async src="https://www.googletagmanager.com/gtag/js?id=UA-118970829-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', 'UA-118970829-1');
</script>

<body>
<div class="container">
    <div class="row logo">
        <g:img class="wow rotateIn" id="im" dir="images" file="about_haas.png" width="145" height="145"/>
    </div>
    <!--<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 izq">
				<img style="float:left;" class="img-responsive" src="img/ganizq.jpg">
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 der">
				<img style="float:right;" class="img-responsive" src="img/gander.jpg">
			</div>
		</div>-->
    <div class="row">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">
                    <li class='${selected == "home" ? "active" : ""}'><a href="../">HOME</a></li>
                    <li class='${selected == "artists" ? "active" : ""}'><a href="/artists">ARTISTS</a></li>
                    <li class='${selected == "podcasts" ? "active" : ""}'><a href="/podcasts">PODCAST</a></li>
                    <li class='${selected == "releases" ? "active" : ""}'><a href="/releases">RELEASES</a></li>
                    <li class='${selected == "events" ? "active" : ""}'><a href="/events">EVENTS</a></li>
                    <li class='${selected == "press" ? "active" : ""}'><a href="/press">PRESS</a></li>
                    <li class='${selected == "about" ? "active" : ""}'><a href="/about">ABOUT</a></li>
                    <li class='${selected == "contact" ? "active" : ""}'><a href="/contact">CONTACT</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="https://www.facebook.com/haasrecords" target="_blank"><i class="fab fa-facebook"
                                                                                          style="font-size:20px; color:black;"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/haasrecords" target="_blank"><i class="fab fa-instagram"
                                                                                           style="font-size:20px; color:black;"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://soundcloud.com/haasrecords" target="_blank"><i class="fab fa-soundcloud"
                                                                                        style="font-size:20px; color:black;"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.youtube.com/haasrecords" target="_blank"><i class="fab fa-youtube"
                                                                                         style="font-size:20px; color:black;"></i>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank"><i class="fab fa-spotify" style="font-size:20px; color:black;"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.beatport.com/label/haas-records/70248" target="_blank">
                            <g:img dir="images" file="beatport.png"/>
                        </a>
                    </li>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </ul>

            </div><!-- /.navbar-collapse -->
        </nav>
    </div>
</div>


<div class="container">

    <div id="full-width-slider" class="royalSlider rsMinW">
        <div class="rsContent">
            <g:if test="${haas.records.Carousel.findById(1)}">
                <img class="img-responsive" src="${haas.records.Carousel.findById(1).img_one}">
            </g:if>
            <g:else>
                <g:img class="rsImg" dir="images" file="banner/slider1.jpg"/>
            </g:else>

            <g:if test="${haas.records.Carousel.findById(1)}">
                <div class="fws-text container">
                    <div class="rsABlock textoSlide" style="color: white">
                        <strong>${haas.records.Carousel.findById(1).text_one}</strong><br/>
                        <a href="${haas.records.Carousel.findById(1).link_one}">
                            <span class="frase">${haas.records.Carousel.findById(1).subtitle_one}
                                <i class="glyphicon glyphicon-play"></i>
                            </span>
                        </a>
                    </div>
                </div>
            </g:if>

            <g:else>
                <div class="fws-text container">
                    <div class="rsABlock textoSlide" style="color: white">
                        MAXIMILIANO <strong>HAAS</strong><br/>
                        <em>too late / ep</em><br/>
                        <a href="../releases">
                            <span class="frase" style="background-color: black; padding: 10px;">
                                <i class="glyphicon glyphicon-play"></i>Read More
                            </span>
                        </a>
                    </div>
                </div>
            </g:else>
        </div>

        <div class="rsContent">
            <g:if test="${haas.records.Carousel.findById(1)}">
                <img class="img-responsive" src="${haas.records.Carousel.findById(1).img_two}">
            </g:if>
            <g:else>
                <g:img class="rsImg" dir="images" file="banner/slider2.jpg"/>
            </g:else>


            <g:if test="${haas.records.Carousel.findById(1)}">
                <div class="fws-text container">
                    <div class="rsABlock textoSlide" style="color: black">
                        <strong>${haas.records.Carousel.findById(1).text_two}</strong><br/>
                        <a href="${haas.records.Carousel.findById(1).link_two}">
                            <span class="frase"> ${haas.records.Carousel.findById(1).subtitle_two}
                                <i class="glyphicon glyphicon-play"></i>
                            </span>
                        </a>
                    </div>
                </div>
            </g:if>
            <g:else>
                <div class="fws-text container">
                    <div class="rsABlock textoSlide" style="color: black">
                        MAXIMILIANO <strong>HAAS</strong><br/>
                        <em>too late / ep</em><br/>
                        <a href="../releases">
                            <span class="frase" style="background-color: black; padding: 10px;">
                                <i class="glyphicon glyphicon-play"></i>Listen & Download
                            </span>
                        </a>
                    </div>
                </div>
            </g:else>
        </div>
    </div>

</div>

</body>
