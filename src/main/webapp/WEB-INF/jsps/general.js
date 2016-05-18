$(document).ready(function(){
	$('#content').load('index.jsp');
	
	$('ul.dropdown-menu li a').click(function(){
		var page=$(this).attr('href');
		$('#content').load('content/'+ page + '.jsp');
		return false;
	});
});