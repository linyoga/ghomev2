//bizwrap v1.3



$( window ).resize(function() {
    $(".navbar-collapse").css({ maxHeight: $(window).height() - $(".navbar-header").height() + "px" });
});


/*=========================*/
/*====main navigation hover dropdown====*/
/*==========================*/
$(document).ready(function() {

    $('.js-activated').dropdownHover({
        instantlyCloseOthers: false,
        delay: 0
    }).dropdown();

});

/*====flex  slider for main slider or testimonials====*/
$('.main-flex-slider,.testimonials').flexslider({
    slideshowSpeed: 8000,
    directionNav: false,
    animation: "fade"
});

/*========portfolio mix====*/
$('#grid').mixitup();

/*========tooltip and popovers====*/

$("[data-toggle=popover]").popover();

$("[data-toggle=tooltip]").tooltip();


/*========flex-gallery slide====*/
$(window).load(function() {
    $('.flexslider').flexslider({
        directionNav: false,
        slideshowSpeed: 3000,
        animation: "fade"
    });
});


    /* -------------------
 Parallax Sections
 ---------------------*/



