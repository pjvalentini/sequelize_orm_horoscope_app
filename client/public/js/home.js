/* globals $ */

$(document).ready(function() {
	$.ajax({
		method: 'GET',
		url: '/get-users',
	}).then((res) => {
		console.log(res);
		if (res.message === "signed-in") {
			window.location.href = '/home' + res.id;
		}
	});

	$('#sign-up-form').on('submit', function(e) {
		e.preventDefault();

		var signInObj = {
			name: $('#name-input').val(),
			birthdate: $('#birthdate-input').val(),
			zodiac: $('#zodiac-input').val(),
		};
		console.log(signInObj);

		$.ajax({
			method: 'POST',
			url: '/create-user',
			dataType: 'json',
			data: JSON.stringify(signInObj),
			contentType: 'application/json',
		}).then(function(res) {
			if (res) {
			} else {
				window.location.href = "/home";
			}
		});
	});
});
