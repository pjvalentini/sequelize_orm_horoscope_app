/* globals $ */

$(document).ready(function() {
	$.ajax({
		method: 'GET',
		url: '/api/sign-up',
	}).then((res) => {
		console.log(res);
		if (res.message === "signed-in") {
			window.location.href = '/sign-in' + res.id;
		}
	});

	$('#sign-up-form').on('sumbit', function(e) {
		e.preventDefault();

		var signInObj = {
			name: $('#name-input').val(),
			birthdate: $('#birthdate-input').val(),
		};
		console.log(signInObj);

		$.ajax({
			method: 'POST',
			url: '/api/sign-up',
			dataType: 'json',
			data: JSON.stringify(signInObj),
			contentType: 'application/json',
		}).then(function(res) {
			if (res.name) {
					alert("You have signed up! Now Please sign-in");
			} else {
				window.location.href = "/sign-in";
			}
		});
	});
});
