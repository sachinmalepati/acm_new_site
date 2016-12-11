//replacing tagNames to tagnames in html, just to avoid collision or mis-understood var leak
'use strict';

window.onload = populate();
var posterId = 0, timeout;

function populate() {
	var file = window.location.href.substring(window.location.href.lastIndexOf('/')+1),
	    index = 0;
	if ( file )
		index = elementIndex(navMap, file); //elementIndex does not consider the case when the element is absent
	applyClassExcept(document.getElementById(index), 'active', 'navitems', document.getElementsByClassName('navitems'));
	animateStrips();
}

function animateStrips () {
	if(posterId > 10)
		posterId = 0;
	if(document.getElementById('picsContainer')) {
		document.getElementById('picsContainer').style.cssText = 'background-image:url(\'./img/Stripe_2015.jpg\');background-position:'+ posterId++*800 +'px 0px';
		timeout = setTimeout('animateStrips()', 5000);
	}
}

//pseudo-standard functions below

function killMyChildren(ele){								//don't sue me for this name
	var children = ele.childNodes;
	for(var i=0;i<children.length;)
		ele.removeChild(children[i]);						//killed 'em brutally!
}

function count(obj){
	var i=0;
	for(var prop in obj)
		if (obj.hasOwnProperty(prop))
			i++;
	return i;
}

function addElement(tag, parentnode, csstext, htmlCode){	 			//some multipurpose thing ;)
	var ele = document.createElement(tag);
	ele.style.cssText = csstext;
	ele.insertAdjacentHTML('afterbegin', htmlCode);
	parentnode.appendChild(ele);
}

function applyClass(classFinal, nodeList){
	var length = nodeList.length;
	if(length === undefined)
		nodeList.className = classFinal;
	else
		for(var i=0;i<length;i++)
			nodeList[0].className = classFinal;
}

function applyClassExcept(node, extraClass, classFinal, nodeList){			//LOL extraClass ;)
	var length = nodeList.length;
	for(var i=0;i<length;i++)
		if(node === nodeList[i])
			node.className = classFinal + ' ' + extraClass;
		else
			nodeList[i].className = classFinal;
}

function stringify(obj){								//hehehe. Similar to JSON.stringify()
	return '"'+obj+'"';
}

function elementIndex(arr, ele){
	for(var i=0, len = arr.length; i<len; i++)
		if(arr[i] === ele)
			return i;
}
