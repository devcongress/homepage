// $(function() {
// 	// catch all clicks on a tags
// 	$("div").click(function() {
// 		// check if has hash
// 		if(this.hash) {
// 			// get rid of the pound sign
// 			var hash = this.hash.substr(1);

// 			// get the position of the <a name>
// 			var $toElement = $("div[name="+hash+"]");
// 			var toPosition = $toElement.position().top;

// 			//scroll/animate to that element
// 			$("body,html").animate({
// 				scrollTop : toPosition
// 			}, 2000, "easeOutExpo");

// 			// don't do the jump
// 			return false;
// 		};
// 	});

// });


$('html, body').animate({
    scrollTop: $("div").offset().top
}, 2000);


// $(document)
// .on('click', 'a[href*="#"]', function() {
// 	if ( this.hash ) {
// 		$.bbq.pushState( '#/' + this.hash.slice(1) );
// 		return false;
// 	}
// })
// .ready(function() {
// 	$(window).bind('hashchange', function(event) {
// 		var tgt = location.hash.replace(/^#\/?/,'');
// 		if ( document.getElementById(tgt) ) {
// 			$.smoothScroll({scrollTarget: '#' + tgt});
// 		}
// 	});

// 	$(window).trigger('hashchange');
// });