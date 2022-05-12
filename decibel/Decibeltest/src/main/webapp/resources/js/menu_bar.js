$(document).ready(function() {
	  var $toggleButton = $('.toggle-button');
	  $toggleButton.on('click', function() {
	    $(this).toggleClass('open');
	  });
	});

	$(document).ready(function() {
	    var $toggleButton = $('.toggle-button'),
	        $menuWrap = $('.menu-wrap');

	    $toggleButton.on('click', function() {
	        $(this).toggleClass('button-open');
	        $menuWrap.toggleClass('menu-open');
	    });
	});

