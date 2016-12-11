'use strict';

document.getElementsByName('passwordAgain')[0].addEventListener('change', checkPass);
document.getElementsByName('phone')[0].addEventListener('change', enableSubmit);

function checkPass() {
	var password = document.getElementsByName('password')[0],
	    passwordAgain = document.getElementsByName('passwordAgain')[0];
	
	if ( password.value !== passwordAgain.value ) {
		password.style.cssText = 'border: solid 2px red';
		passwordAgain.style.cssText = 'border: solid 2px red';
		return ;
	}
	else if ( password.value ) {
		password.style.cssText = '';
		passwordAgain.style.cssText = '';
		return ;
	}
}

function enableSubmit() {
	var phone = document.getElementsByName('phone')[0].value,
	    error = document.getElementsByClassName('error')[0];

	if ( phone < 1000000000 || phone >9999999999 || !phone ) {
		document.getElementsByName('submitButton')[0].disabled = true;
		error.style.display = '';
	}
	else {
		document.getElementsByName('submitButton')[0].disabled = false;
		error.style.display = 'none';
	}
}
