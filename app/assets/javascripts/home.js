/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/*/

// TAB HOVER

$(document).ready(function(){

	$('ul#menu li').hover(
        function(){
 			$(this).children('ul').stop(true,true).delay(20).slideDown(200);
 			$(this).addClass("active");
		},
		function(){
     		$(this).children('ul').delay(20).slideUp(200);
	 		$(this).removeClass("active");
		});


});



// HOROSCOPES

$(document).ready(function(){

    var len = $("#slideshow li").length;
    var x = 0;
    $("#slideshow #total").text(len);
    $("#slideshow li:eq(0)").addClass("current");
    $("#slideshow li").each(function() {
        $(this).attr('rel', x);
        x++
    }); 

    $("#next").click(function() {
        var current = $("#slideshow .current");
        var next = parseFloat(current.attr('rel'))+1;
        if(next==len) {
            return false;
        }
        $("#num").text(parseFloat(next)+1);
        current.removeClass('current');
        $("#slideshow li").each(function() {
            if($(this).attr('rel')==next) {
                $(this).addClass('current');
            }
        });                                 
    });

    $("#prev").click(function() {
        var current = $("#slideshow .current");
        var prev = parseFloat(current.attr('rel'))-1;
        if(prev<0) {
            return false;
        }
        $("#num").text(parseFloat(prev)+1);
        current.removeClass('current');
        $("#slideshow li").each(function() {
            if($(this).attr('rel')==prev) {
                $(this).addClass('current');
            }
        });                                 
    }); 

});


// BANNER SLIDE
jssor_slider1_starter = function (containerId) {

    var options = {
        $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)
        $SlideDuration: 800,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500

        $DirectionNavigatorOptions: {                       //[Optional] Options to specify and enable direction navigator or not
                $Class: $JssorDirectionNavigator$,              //[Requried] Class to create direction navigator instance
                $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
            }

        
    };

    var jssor_slider1 = new $JssorSlider$(containerId, options);
    };





