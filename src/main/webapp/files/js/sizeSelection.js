$( document ).ready(function() {
	$('.options').click(function(){
		$('.options').removeClass('active');
		$(this).addClass('active');
		var size = $(this).children().has('p').text();
		
		$(".size-selection").remove();
		$(this).append("<input class='size-selection' type='hidden' name='size' value=" + size +">")
		
		
		console.log(size);
	});
})