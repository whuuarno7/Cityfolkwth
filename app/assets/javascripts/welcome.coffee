# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  $window = $(window);
 
        $('div[data-type="background"]').each(function() {
            var $scroll = $(this);
 
            $(window).scroll(function() {
                var yPos = -($window.scrollTop() / $scroll.data('speed'));
                var coords = '50% ' + yPos + 'px';
                $scroll.css({ backgroundPosition: coords });
            });
        });
 
});

<script>
$('.slideshow').each( function() {  
var $slideshow = $(this);
$slideshow.imagesLoaded( function() {
$slideshow.skidder({
slideClass: '.slide',
 
// Scales widest image to maxSlideWidth.
// Adjusts slideshow height accordingly. 
scaleSlides   : true,
 
// Scale widest image to this width if scaleSlides == true
maxSlideWidth : 800,
maxSlideHeight: 500,
 
// Creates a clickable and stylable paging dot for each slide.
paging: true,
autoPaging: true,
pagingWrapper : ".skidder-pager",
pagingElement : ".skidder-pager-dot",
 
// Enable swiping on touch device.
swiping   : true,
 
// Set to true if you don't want your slideshow centered.
leftaligned   : false,
 
// Set to false if you don't want your slideshow to wrap around
cycle : true,
 
// In non-cycling mode jumpback will display a 'return to first slide' arrow at the last slide.
jumpback  : false,
 
// Transition speed.
speed : 400,
 
autoplay  : false,
 
// Resume autoplay after paging has been clicked
autoplayResume: false,
 
interval  : 4000,
 
// Choose between 'slide' or 'fade'
transition: "slide",
 
// Callbacks
afterSliding  : function() {},
afterInit : function() {}
});
});
});
 
$(window).smartresize(function(){
$('.slideshow').skidder('resize');
});
 
</script>