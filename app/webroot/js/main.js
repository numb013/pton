(function($){
	"use strict";

	$(window).load(function() {
		var $container = $('#fh5co-projects-feed'),
		containerWidth = $container.outerWidth();

		$container.masonry({
			itemSelector : '.fh5co-project',
			columnWidth: function( containerWidth ) {
                                                                console.log(containerWidth);
				if( containerWidth <= 320 ) {
                                    console.log('a');
					return 137;
				} else if( containerWidth <= 350 ) {
                                    console.log('b');
                                    return 161;
                                } else if( containerWidth <= 400 ) {
                                    console.log('c');
                                    return 178;
                                }  else {
                                    console.log('d');
					return 330;
				}
			},

			isAnimated: !Modernizr.csstransitions
		});
	});

})(window.jQuery);