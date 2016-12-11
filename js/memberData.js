var previousId = 0;

// We did not cache the responses till now. Lets do that to make the thing free from those insane amounts of loaders creeping in
var cache = {};

window.onload = function () {
	var cont = document.querySelectorAll('.memberdata');

/************** Major data load problem ******************/
/**************** Removed till fixed *********************/
	/*for(var _i = 0, _len = cont.length; _i < _len; _i++) {
		cont[_i].addEventListener('mouseover', function () {
			showAllMemberData(this.id, this);
		}, false);
		cont[_i].addEventListener('mouseout', function () {
			// Create a new CustomEvent and dispatch it
			var ev = new CustomEvent('keydown');
			ev.keyCode = 27;
			window.dispatchEvent(ev);
		}, false);
	}*/
}

function showAllMemberData(id, obj) {
	// Perform an AJAX request and fetch data from the server as and when needed. 
	// We are doing this because we need to prevent the members from getting spammed by exposing there data.
	// Once the user clicks on some div, the server replies with data on the fly, and this function populates the div accordingly.
	// We will have to place an event handler on window that tracks clicks outside the popup.
	// Also, we need to make sure that two popups are never open simultaneously. We will simply delete any open popup before generating any.
	
	var httpRequest;
	
	if (window.XMLHttpRequest) { 
		httpRequest = new XMLHttpRequest();
	}
	else if (window.ActiveXObject) { 
		httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}

	httpRequest.onreadystatechange = function() {
		if(httpRequest.readyState === 1) {
			addLoader(obj);
		}
		if(httpRequest.readyState === 4) {
			var response = (httpRequest.status === 200) ? JSON.parse(httpRequest.responseText) : "Failed to load data :(";
	                cache[id] = response;
	                populateContainer(obj, cache[id]);
		}
	}
        
	// Fire a request only if the response is not cached
        if(cache[id] === undefined) {
        	httpRequest.open('POST', 'queryContact.php', true);
		httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); 
		httpRequest.send("id="+id);
	}
	else
		populateContainer(obj, cache[id]);
}

function addLoader(obj) {
	// This function gets the container div and adds a small loading GIF to it, while we fetch the data
	
	var container = obj.parentNode.children[1], loader = document.createElement('img');
	if(obj.offsetLeft + 300 > 900) {
		container.className = 'memberDataContainer containerRight';
		container.style.cssText = "top: " + (obj.offsetTop + 150) + "px; right: 75px";
	}
	else {
		container.className = 'memberDataContainer containerLeft';
		container.style.cssText = "top: " + (obj.offsetTop + 150) + "px; left: " + (obj.offsetLeft + 55) + "px";
	};
	loader.setAttribute('src', '//nitsurat.acm.org/files/loader.gif');
	loader.setAttribute('id', 'loader');
	loader.style.cssText = "height: 32px; width: 32px; padding: 10px"
	container.appendChild(loader);
	container.style.display = "block";
}

function populateContainer(obj, response) {
	var container = obj.parentNode.children[1], children = container.children;
	
	if(obj.offsetLeft + 300 > 900) {
		container.className = 'memberDataContainer containerRight';
		container.style.cssText = "top: " + (obj.offsetTop + 150) + "px; right: 75px";
	}
	else {
		container.className = 'memberDataContainer containerLeft';
		container.style.cssText = "top: " + (obj.offsetTop + 150) + "px; left: " + (obj.offsetLeft + 55) + "px";
	};
	
	// remove the loader (if any)
	var loader = document.querySelector('#loader');
	loader ? container.removeChild(loader) : '';
	
	if(typeof response !== typeof {}) {
		var span = document.createElement('span');
		var text = document.createTextNode(response);
		span.style.cssText = "padding: 10px";
		span.appendChild(text);
		container.appendChild(span);
	}
	else {
		var i = 0;
		children.name_alias.innerHTML = response.name + (response.alias ? ( "<small> (" +response.alias + ") </small>" ) : "");
		children.name_alias.style.fontSize = "16px";
		children.designation.innerHTML = response.designation;
		children.designation.style.fontSize = "14px";
		children.batch.innerHTML = "Batch of " + response.startYear + "-" + response.endYear;
		children.branch.innerHTML = response.department;
		
		if(response.email) {
			children.email.style.display = "";
			children.email.children[0].style.cssText = "background: url('//nitsurat.acm.org/img/stripe_contacts_20wide.png') no-repeat scroll 0% -" + i * 20 + "px transparent";
			children.email.children[1].innerHTML = response.email;
		} else { children.email.style.display = "none"; } i++;
		
		if(response.fbProfile) {
			children.facebook.style.display = "";
			children.facebook.children[0].style.cssText = "background: url('//nitsurat.acm.org/img/stripe_contacts_20wide.png') no-repeat scroll 0% -" + i * 20 + "px transparent";
			children.facebook.children[1].innerHTML = response.fbProfile;
		} else { children.facebook.style.display = "none"; } i++;
				
		if(response.twAccount) {
			children.twitter.style.display = "";
			children.twitter.children[0].style.cssText = "background: url('//nitsurat.acm.org/img/stripe_contacts_20wide.png') no-repeat scroll 0% -" + i * 20 + "px transparent";
			children.twitter.children[1].innerHTML = response.twAccount;
		} else { children.twitter.style.display = "none"; } i++;
		
		if(response.IRCNick) {
			children.irc.style.display = "";
			children.irc.children[0].style.cssText = "background: url('//nitsurat.acm.org/img/stripe_contacts_20wide.png') no-repeat scroll 0% -" + i * 20 + "px transparent";			
			children.irc.children[1].innerHTML = response.IRCNick + " on " + response.IRCServer;
		} else { children.irc.style.display = "none"; } i++;
		
		if(response.gitHub) {
			children.github.style.display = "";
			children.github.children[0].style.cssText = "background: url('//nitsurat.acm.org/img/stripe_contacts_20wide.png') no-repeat scroll 0% -" + i * 20 + "px transparent";
			children.github.children[1].innerHTML = response.gitHub;
		} else { children.github.style.display = "none"; } i++;

		if(response.URI) {
			children.blog.style.display = "";
			children.blog.children[0].style.cssText = "background: url('//nitsurat.acm.org/img/stripe_contacts_20wide.png') no-repeat scroll 0% -" + i * 20 + "px transparent";
			children.blog.children[1].innerHTML = response.URI;
		} else { children.blog.style.display = "none"; } 
	}
	container.style.display = 'block';
}

window.addEventListener('keydown', function hideEmAll(event){
	switch(event.keyCode){
		case 27:
			var ele = document.querySelectorAll('.memberDataContainer');
			for(var i = 0, _len = ele.length; i < _len; i++)
				ele[i].style.display = "none";
			previousId = 0;
			break;
	}
}, false);

