$(document).ready(function(){
	$(".showComments").on("click", function(e){
		e.preventDefault();
		$(this).next('.comments').css('display', 'block');
	});
	$(".hideComments").click(function(e){
		e.preventDefault();
		$(this).parent('.comments').css('display', 'none');
	});
});
