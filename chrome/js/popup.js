function $(id) { return document.getElementById(id); }
function show(id) { $(id).style.display = 'block'; }
function hide(id) { $(id).style.display = 'none'; }

var matches = ['http://*/*', 'https://*/*', 'ftp://*/*', 'file://*/*'],
    noMatches = [/^https?:\/\/chrome.google.com\/.*$/];
function testURLMatches(url) {
    var r, i;
    for (i=noMatches.length-1; i>=0; i--) {
        if (noMatches[i].test(url)) {
            return false;
        }
    }
    for (i=matches.length-1; i>=0; i--) {
        r = new RegExp('^' + matches[i].replace(/\*/g, '.*') + '$');
        if (r.test(url)) {
            return true;
        }
    }
    return false;
}

var screenshot, 
	contentURL,
	description,
	title,
	keywords = '';

function sendScrollMessage(tab) {
    contentURL = tab.url;
    screenshot = {};
    chrome.tabs.sendRequest(tab.id, {msg: 'scrollPage'}, function() {
        sendSnap();
    });
}

chrome.extension.onRequest.addListener(function(request, sender, callback) {
    if (request.msg === 'capturePage') {
        capturePage(request, sender, callback);
    } else {
        console.error('Unknown message received from content script: ' + request.msg);
    }
});


function capturePage(data, sender, callback) {
    var canvas;

    $('bar').style.width = parseInt(data.complete * 100, 10) + '%';

    // Get window.devicePixelRatio from the page, not the popup
    var scale = data.devicePixelRatio && data.devicePixelRatio !== 1 ?
        1 / data.devicePixelRatio : 1;

    if (!screenshot.canvas) {
        canvas = document.createElement('canvas');
        canvas.width = data.totalWidth;
        canvas.height = data.totalHeight;
        screenshot.canvas = canvas;
        screenshot.ctx = canvas.getContext('2d');
        if (scale !== 1) {
            screenshot.ctx.scale(scale, scale);
        }
    }
    if (scale !== 1) {
        data.x = data.x / scale;
        data.y = data.y / scale;
    }

    chrome.tabs.captureVisibleTab(
        null, {format: 'png', quality: 100}, function(dataURI) {
            if (dataURI) {
                var image = new Image();
                image.onload = function() {
                    screenshot.ctx.drawImage(image, data.x, data.y);
                    callback(true);
                };
                image.src = dataURI;
            }
        });
}

function sendSnap() {
		
	$('message').innerHTML = 'Sending...';
    var dataURI = screenshot.canvas.toDataURL();

	// The URL to POST our data to
	var postUrl = 'http://localhost:8888/isnap/forms/snaps';
	var url = encodeURIComponent(contentURL);
	var img = encodeURIComponent(dataURI);
	var keys = encodeURIComponent(keywords);
	var desc = encodeURIComponent(description);
	var t = encodeURIComponent(title);
	var params = 'url='+url+'&image='+img+'&keywords='+keys+'&description='+desc+'&title='+t;
	    params = params.replace(/%20/g, '+');

	// Set up an asynchronous AJAX POST request
	var xhr = new XMLHttpRequest();
		xhr.open('POST', postUrl, true);
		xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
		xhr.onreadystatechange = function() { 
	        if (xhr.readyState == 4) {
	            if(xhr.status == 200) {
					$('message').innerHTML = 'Saved!';
	            }else{
					$('message').innerHTML = 'Error saving: ' + xhr.statusText;
	            }
	        }
	    };

		// Send the request and set status
		xhr.send(params);

}

var code = 'var meta = document.querySelector("meta[name=\'description\']") || document.querySelector("meta[name=\'Description\']");' +
		   'var key = document.querySelector("meta[name=\'keywords\']") || document.querySelector("meta[name=\'Keywords\']");' + 
           'if (meta) meta = meta.getAttribute("content");' +
		   'if (key) key = key.getAttribute("content");' +
           '({' +
           '    title: document.title,' +
           '    description: meta || "",' +
           '    keywords: key || ""' +
           '});';

chrome.tabs.executeScript({
	code: code
}, function(results){
	if(!results){
		return;
	}
	var result = results[0];
		description = result.description;
		title = result.title;
		keywords = result.keywords;
});

chrome.tabs.getSelected(null, function(tab) {
	contentURL = tab.url
    if(testURLMatches(tab.url)){
        var loaded = false;
        chrome.tabs.executeScript(tab.id, {file: 'js/page.js'}, function(){
            loaded = true;
            show('loading');
            sendScrollMessage(tab);
        });
        window.setTimeout(function() {
            if(!loaded) {
                show('error');
            }
        }, 1000);
    }else{
        show('invalid');
    }
});
