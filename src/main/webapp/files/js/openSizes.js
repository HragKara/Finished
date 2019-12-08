$( document ).ready(function() {
	$("#buy-new").click(function(){
		$('.select-size-box').css('display','inline-flex');
		event.stopPropagation();
	})
	
	$('body').click(function(){
		$('.select-size-box').hide();
	})
})