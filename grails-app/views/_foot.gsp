<body>

<br style="clear:both;"/>

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-8 fondo_gris">
                <form class="contact_form" id="form1" name="form1" method="post" action="enviar.php">

                    <div>
                        <label for="exampleInputEmail2">SIGN UP FOR NEWSLETTER</label>
                        <input name="mail" type="email" size="32" id="mail" placeholder="Put your email address here"
                               required>
                        <button type="submit" value="mail" class="boton_negro">SUSCRIBE</button>

                    </div>
                </form>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 fondo_gris fondo_gris1">
                <div style="text-align:right; padding-top:23px;">
                    <a href="https://www.facebook.com/haasrecords" target="_blank">
                        <i class="fab fa-facebook" style="font-size:20px;"></i>
                    </a>&nbsp;&nbsp;
                    <a href="https://www.instagram.com/haasrecords" target="_blank">
                        <i class="fab fa-instagram" style="font-size:20px;"></i>
                    </a>&nbsp;&nbsp;
                    <a href="https://soundcloud.com/haasrecords" target="_blank">
                        <i class="fab fa-soundcloud" style="font-size:20px;"></i>
                    </a>&nbsp;&nbsp;
                    <a href="https://www.youtube.com/haasrecords" target="_blank">
                        <i class="fab fa-youtube" style="font-size:20px;"></i>
                    </a>&nbsp;&nbsp;
                    <a href="#" target="_blank"><i class="fab fa-spotify" style="font-size:20px;"></i></a>&nbsp;&nbsp;
                    <a href="https://www.beatport.com/label/haas-records/70248" target="_blank">
                        <g:img dir="images" file="beatport.png"/>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <hr/>

    <div class="row copy"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <h3>COPYRIGHT HAAS RECORDS 2018</h3>
        </div>
    </div>


    <div class="row copy"><!-- row About -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <g:if test="${session.user}">
                <a href="/logout">Deslogear</a>
                <a style="margin-left: 5%" href="/admin">BackOffice</a>
            </g:if>
            <g:else>
                <a href="/login">Login</a>
            </g:else>

            <a style="margin-left: 5%" href="/github">Developed by</a>

        </div>
    </div>


    <div class="row logo_chico">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
            <br/>
            <g:img dir="images" file="haasrecordschico.png"/>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 izq">
            <g:img style="float:left" class="img-responsive" dir="images" file="ganizqabajo.jpg"/>
        </div>

        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 der">
            <g:img style="float:right" class="img-responsive" dir="images" file="ganderabajo.jpg"/>
        </div>
    </div>

</div>

</body>




<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.royalslider-min.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="main.js"/>
<asset:javascript src="wow.js"/>


<script>
    wow = new WOW(
        {
            animateClass: 'animated',
            offset: 100,
            callback: function (box) {
                console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
            }
        }
    );
    wow.init();
    document.getElementById('moar').onclick = function () {
        var section = document.createElement('section');
        section.className = 'section--purple wow fadeInDown';
        this.parentNode.insertBefore(section, this);
    };
</script>

</html>