$(document).ready(function(){
	
	//localStorage.removeItem('snapme');
	
	/*
	var data = {
		"username": "mich8060",
		"key": "8lgiwriUirnk5TO3B7x71wTRtIp2c5X0"
	}
	localStorage.setItem('snapme', JSON.stringify(data));
	*/


	var query = JSON.parse(localStorage.getItem('snapme'));

	// Validate User ID
	if(query){
		var signin = $('#signin');
			signin.hide();
		$('#key').val(query.key);
		$('#user').val(query.username);
	}

	var contentURL, name = "";

	chrome.windows.getCurrent(null, function(tab) {
		var maxWidth = window.screen.availWidth;
		var maxHeight = window.screen.availHeight;
		var updateInfo = {
	    	width: 1280,
	    	height: 768
		};
		chrome.windows.update(tab.id, updateInfo);
	});
	
	var code = 	'var meta = document.querySelector("meta[name=\'Description\']") || document.querySelector("meta[name=\'description\']");' + 
				'var keyword = document.querySelector("meta[name=\'Keywords\']") || document.querySelector("meta[name=\'keywords\']");' + 
				'var author = document.querySelector("meta[name=\'Author\']") || document.querySelector("meta[name=\'author\']");' +
	           	'var domain = window.location.host;' +
				'if(meta) meta = meta.getAttribute("content");' +
		        'if(keyword) keyword = keyword.getAttribute("content");' +
			    'if(author) author = author.getAttribute("content");' +
				'if(domain) domain = domain.replace("www.", "");' +
				'if(domain) domain = domain.substring(0, domain.indexOf("."));' +
	           	'({' +
	           	'    title: document.title,' +
	           	'    keywords: keyword || "",' +
	           	'    author: author || "",' +
	           	'    domain: domain || "",' +
	           	'    description: meta || ""' +
	           	'});';
	chrome.tabs.executeScript({
	    code: code
		}, function(results) {
	    	if (!results) {
	        	// An error occurred at executing the script. You've probably not got
	        	// the permission to execute a content script for the current tab
	        	return;
	    	}
	    	var result = results[0];
			$('#title').val(result.title);
			$('#keywords').val(result.keywords);
			$('#author').val(result.author);
			$('#description').val(result.description);
			$('#name').val(result.domain);
		});

	chrome.tabs.getSelected(null, function(tab) {
		contentURL = tab.url;
		$('#url').val(tab.url); 
	});

	chrome.tabs.captureVisibleTab(null, { "format":'png', "quality":100 }, function(dataURI){
		var canvas = document.createElement('canvas');
		var image = new Image();
		var screenshot = '';
			screenshot.canvas = canvas;
			screenshot.ctx = canvas.getContext('2d');

			if(typeof dataURI !== "undefined"){	
				image.onload = function() {
					screenshot.ctx.drawImage(image, 0, 0, 1280, 800);
	            	callback(true);
				}
				image.src = dataURI;
				document.getElementById('image').value = dataURI;
				document.body.appendChild(image);	
			}

		setTimeout(function(){
			// The URL to POST our data to
			var postUrl = 'http://localhost:8888/core/forms/sites';
			var url = encodeURIComponent(document.getElementById('url').value);
			var img = encodeURIComponent(document.getElementById('image').value);
			var params = 'url='+url+'&image='+img;
			    params = params.replace(/%20/g, '+');

	/*
			// Set up an asynchronous AJAX POST request
			var xhr = new XMLHttpRequest();
				xhr.open('POST', postUrl, true);
				xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
				xhr.onreadystatechange = function() { 
			        if (xhr.readyState == 4) {
			            if (xhr.status == 200) {
							document.write('Saved!');
			            } else {
							document.write('Error saving: ' + xhr.statusText);
			            }
			        }
			    };

				// Send the request and set status
				xhr.send(params);
	*/
		},3000);
	});
});