/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/*/



//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks



// TAB
$(document).ready(function(){

    // TAB HOVER
	$('ul#menu li').hover(
        function(){
 			$(this).children('ul').stop(true,true).delay(20).slideDown(200);
 			$(this).addClass("active");
		},
		function(){
     		$(this).children('ul').delay(20).slideUp(200);
	 		$(this).removeClass("active");
		}
    );

    // MOBILE TAB CLICK
    $(".mobLemuL").click(function(e) {          
        e.preventDefault();
        $("ul#menuMob").slideToggle();
    }); 
    $("ul#menuMob").mouseup(function() {
        return false
    });
    $(document).mouseup(function(e) {
        if($(e.target).parent("a.mobLemuL").length==0) {
            $("ul#menuMob").hide();
        }
    });


    // SEARCH BOX
    $(".searchL").click(function(e) {          
        e.preventDefault();
        $("div#searchD").slideToggle();
        $(".searchL").toggleClass("active");
    }); 
    $("div#searchD").mouseup(function() {
        return false
    });
    $(document).mouseup(function(e) {
        if($(e.target).parent("a.searchL").length==0) {
            $(".searchL").removeClass("active");
            $("div#searchD").hide();
        }
    });




});


// SEARCH CLEAR TEXT
function clearText(thefield) {
  if (thefield.defaultValue==thefield.value) { thefield.value = "" }
  if (thefield.value=="Please Fill Your Valid Email Id!") { thefield.value = "" }
  if (thefield.value=="Record Saved Succesfully!") { thefield.value = "" }
  if (thefield.value=="Email Already Exists!") { thefield.value = "" }
    $(thefield).css('color', '#666');
} 
function replaceText(thefield) {
  if (thefield.value=="") { thefield.value = thefield.defaultValue }
}

function validate(e)
    {
       
      var email=document.getElementById("newsltr").value;

      var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
      // document.getElementById("newsltr").value="Please Fill Your Valid Email Id!";
      // document.onfocus(clearText(this));

      if (reg.test(email) == false) 
        {
          $('#newsltr').val('Please Fill Your Valid Email Id!');
          $('#newsltr').css('color', '#ff0000');
          // return false;
          // e.preventDefault();
        }

      else 
      {
        setTimeout(function() {
                  // var ema = '<%= Subscriber.find_by_email("hello@abc.co") %>';

                  // if (ema)
                      // $('#newsltr').val(ema);
                  // else
                      // $('#newsltr').val("hi");

          $('#newsltr').val("Record Saved Succesfully!");
          $('#newsltr').css('color', 'green');


              }, 100);
      }         

}





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

    // RESPONSIVE BANNER
    function ScaleSlider() {
        var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
        if (parentWidth)
            jssor_slider1.$SetScaleWidth(parentWidth);
        else
            window.setTimeout(ScaleSlider, 30);
    }

    //Scale slider immediately
    ScaleSlider();

    if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
        $(window).bind('resize', ScaleSlider);
    }

};



// EVENT IMAGES SLIDER AND THUMBNAIL
jssor_slider_event = function (containerId) {

    var jssor_slider1 = new $JssorSlider$(containerId, {
        $AutoPlay: false,                                   //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
        $SlideDuration: 800,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500



        $ThumbnailNavigatorOptions: {                       //[Optional] Options to specify and enable thumbnail navigator or not
            $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
            $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always

            $ActionMode: 1,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
            $SpacingX: 8,                                   //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
            $DisplayPieces: 10,                             //[Optional] Number of pieces to display, default value is 1
            $ParkingPosition: 360                           //[Optional] The offset position to park thumbnail
        }

        
    });
            
    // RESPONSIVE BANNER
    function ScaleSlider() {
        var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
        if (parentWidth)
            jssor_slider1.$SetScaleWidth(parentWidth);
        else
            window.setTimeout(ScaleSlider, 30);
    }

    //Scale slider immediately
    ScaleSlider();

    if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
        $(window).bind('resize', ScaleSlider);
    }

};



// FACEBOOK COMMENTS

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1&appId=561557177246334";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));






