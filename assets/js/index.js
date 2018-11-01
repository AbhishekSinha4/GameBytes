$(window).load(fade);
$("#login").click(flip);

$("#back").submit(validate);
function fade(event){
	$("#welcome").fadeIn(1200,function(){
		$("#welcome").fadeOut(800,function(){
			$("#welcome").remove();
			$("#to").fadeIn(1200,function(){
				$("#to").fadeOut(800,function(){
					$("#to").remove();
					$("#gamebytes").fadeIn(1200,function(){
						$("#heading").animate({
							top: '20%'
						},function(){
							$("#button_container").fadeIn(1200);
						})
					});
				});
			})
		});
	});
}

function flip(){
	$("#front").css({
		"transform": "perspective(600px) rotateY(-180deg)",
		"-webkit-transform": "perspective(600px) rotateY(-180deg)",
		"-o-transform": "perspective(600px) rotateY(-180deg)",
		"-moz-transform": "perspective(600px) rotateY(-180deg)",
		"-ms-transform": "perspective(600px) rotateY(-180deg)"
	})
	$("#back").css({
		"transform": "perspective(600px) rotateY(0deg)",
		"-webkit-transform": "perspective(600px) rotateY(0deg)",
		"-o-transform": "perspective(600px) rotateY(0deg)",
		"-moz-transform": "perspective(600px) rotateY(0deg)",
		"-ms-transform": "perspective(600px) rotateY(0deg)"
	})
}

function validate(e){
	var errorMessage="<span id='error-head'>Error(s):</span>";
	var original=errorMessage;
	if($("#memid").val().length<1)errorMessage+="<p>Member ID is required</p>";
	else{
		if(!$("#memid").val().match(/^[0-9A-Za-z]+$/))errorMessage+="<p>Member ID can only have alphanumeric characters</p>"
	}
	if($("#password").val().match(/'/))errorMessage+="<p>Invalid Character '</p>";
	if(errorMessage!==original){
		e.preventDefault();
		$("#error-box").html(errorMessage);
		document.querySelector("#error-box").style.display="block";
	}
}