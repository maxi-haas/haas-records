$(document).ready(function(){

  // SLIDER 
    $('#full-width-slider').royalSlider({
        arrowsNav: false,
        loop: true,
        keyboardNavEnabled: false,
        controlsInside: false,
        imageScaleMode: 'fill',
        arrowsNavAutoHide: false,
        controlNavigation: 'bullets',
        navigateByClick: false,
        startSlideId: 0,
        slidesSpacing: 0,
        imageAlignCenter: false,
        autoPlay: {
            enabled: true,
            pauseOnHover: true,
            delay: 4500
        },              
        transitionType:'slide',
        globalCaption: false,
        deeplinking: {
            enabled: true,
            change: false
        },
        block: {
          // animated blocks options go gere
          fadeEffect: false,
          moveEffect: 'bottom',
          moveOffset: 30,
          delay: 200,
          easing: 'easeOutSine'
        }     
    });

    

    // Controlo los beneficios de todas las lineas
  var _current = $('#tab1');
    $(".tab").bind("click", function(event) {
        event.preventDefault();

        $(".tab").removeClass("active");
        $(this).addClass("active");

        _current.addClass("oculta");
        _current.hide();
        $('#tab2').hide();
        $('#tab3').hide();
      
          var link = $(this).attr("href");
          switch (link) { 
                case '#tab1': 
                    $("#tab1").show().delay(500);
                    _current = $('#tab1');
                    break;
                case '#tab2': 
                    $("#tab2").show().delay(500);
                    _current = $('#tab2');
                    break;
                case '#tab3': 
                    $("#tab3").show().delay(500);
                    _current = $('#tab3');
                    break;
                 case '#tab4': 
                    $("#tab4").show().delay(500);
                    _current = $('#tab4');
                    break;
                default:
                    $("#tab1").show().delay(500);
          } 

        
          
    });

    $('.accordion').find('.accordion-toggle').click(function() {
        $(this).next().slideToggle('600');
        $(".accordion-content").not($(this).next()).slideUp('600');
    });
    $('.accordion-toggle').on('click', function() {
        $(this).toggleClass('active').siblings().removeClass('active');
    });

    $('.btnMasQuienes').on('click', function() {
        $('.masTexto').slideToggle();
        $('.btnMasQuienes').hide();
    });

    
});

if (window.innerWidth <  600) {
        $('#full-width-slider').royalSlider({
        arrowsNav: false,
        loop: true,
        keyboardNavEnabled: false,
        controlsInside: false,
        imageScaleMode: 'fill',
        arrowsNavAutoHide: false,
        controlNavigation: 'bullets',
        navigateByClick: false,
        startSlideId: 0,
        slidesSpacing: 0,
        imageAlignCenter: true,
        autoPlay: {
            enabled: true,
            pauseOnHover: true,
            delay: 4500
        },              
        transitionType:'slide',
        globalCaption: false,
        deeplinking: {
            enabled: true,
            change: false
        },
        block: {
          // animated blocks options go gere
          fadeEffect: false,
          moveEffect: 'bottom',
          moveOffset: 30,
          delay: 200,
          easing: 'easeOutSine'
        }     
    });

    };