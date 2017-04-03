

function sleep(milliseconds) {
	var start = new Date().getTime();
	for (var i = 0; i < 1e7; i++) {
		if ((new Date().getTime() - start) > milliseconds) {
			break;
		}
	}
}
var k = true;
function wait() {
	console.log('Waiting...');
	k = true;
	while (k) {
		;//sleep(5);
		//	console.log("k");
	}
}
function notify() {
	k = false;
	//k=true;
	console.log('Finish');
}

function loadjscssfile(filename, filetype, container) {
	var fileref;
	if (filetype === "js") { //if filename is a external JavaScript file
		fileref = document.createElement('script');
		fileref.setAttribute("type", "text/javascript");
		fileref.setAttribute("src", filename);
		//fileref.setAttribute("onload", "console.log('" + filename + " loaded');");
		fileref.onload = function (){
			notify();
		};
		fileref.async = false;
	}
	else if (filetype === "css") { //if filename is an external CSS file
		var fileref = document.createElement("link");
		fileref.setAttribute("rel", "stylesheet");
		fileref.setAttribute("type", "text/css");
		fileref.setAttribute("href", filename);
	}
	if ("undefined" != typeof fileref)
		container.appendChild(fileref);
	if (filetype === "js")
		sleep(10);
}

/*
 //all okay set is following
 loadjscssfile("assets/lib/patternfly/css/patternfly.min.css", "css");
 loadjscssfile("assets/lib/patternfly/css/patternfly-additions.min.css", "css");
 
 loadjscssfile("assets/lib/jquery/jquery.min.js", "js");
 loadjscssfile("assets/lib/bootstrap/js/bootstrap.min.js", "js");
 loadjscssfile("assets/lib/patternfly/js/patternfly.min.js", "js");
 */

//var newbee = document.createElement('div');
var newbee = document.head;

loadjscssfile("./assets/lib/bootstrap/css/bootstrap.min.css", "css", newbee);
loadjscssfile("./assets/lib/bootstrap/css/bootstrap-theme.min.css", "css", newbee);
loadjscssfile("./assets/lib/c3/c3.min.css", "css", newbee);
loadjscssfile("./assets/lib/datatables/css/jquery.dataTables.min.css", "css", newbee);
loadjscssfile("./assets/lib/patternfly/css/patternfly.min.css", "css", newbee);
loadjscssfile("./assets/lib/patternfly/css/patternfly-additions.min.css", "css", newbee);

loadjscssfile("./assets/lib/font-awesome/css/font-awesome.min.css", "css", newbee);
loadjscssfile("./assets/lib/google-code-prettify/prettify.min.css", "css", newbee);




//loadjscssfile("assets/lib/requirejs/require.js", "js", newbee);
loadjscssfile("assets/lib/jquery/jquery.min.js", "js", newbee);

//window.jQuery = window.$ = require('jquery');


loadjscssfile("assets/lib/bootstrap/js/bootstrap.min.js", "js", newbee);
loadjscssfile("assets/lib/patternfly/js/patternfly.min.js", "js", newbee);

loadjscssfile("./assets/lib/c3/c3.min.js", "js", newbee);
loadjscssfile("./assets/lib/d3/d3.min.js", "js", newbee);

/*
 //whats wrong with EACH of them???
 loadjscssfile("./assets/lib/datatables/js/jquery.dataTables.min.js","js",newbee);	//neccessary
 
 loadjscssfile("./assets/lib/google-code-prettify/prettify.min.js","js",newbee);
 loadjscssfile("./assets/lib/google-code-prettify/run_prettify.min.js","js",newbee);
 
 loadjscssfile("./assets/lib/easyXDM/easyXDM.min.js","js",newbee);
 loadjscssfile("./assets/lib/easyXDM/easyXDM.Widgets.min.js","js",newbee);
 
 */

loadjscssfile("./assets/lib/YUI/yahoo-min.js", "js", newbee);
loadjscssfile("./assets/lib/YUI/get-min.js", "js", newbee);



