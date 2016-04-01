// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){
		
	var imageUrl = $("img").attr("id")
	console.log(imageUrl)
	// var hexCode = $(this).attr('id');
	var $button = $("#getNewQuote")


	$("button").click(function(){
		console.log("clicking button")
		$.ajax({
			method: "GET",
			url: "/quotes/json"
		}).then(
			function(response){
				console.log("response: ", response)
				//loop through quotes.image

			},
			function(error){
				console.log(error)
			}
		)
	});
}) //ENDS DOCUMENT.READY



// var onUpload = function(err, metadata) {
//     ospry.get({
//       url: metadata.url,
//       maxHeight: 400,
//       imageReady: function(err, domImage) {

//         var path = window.location.pathname.split('/')[2]

//         var data = { image: domImage.src }

//         $('body').append(domImage); 

//         $.ajax({
//           url: '/users/' + path + '/updatejson',
//           data: data,
//           method: 'PUT'
//         }).then(function(result) {
//           console.log(result);
//           location.reload();
//         });
//         // make POST request to Users controller
//         // to add img url to user
//       $.ajax({
//           url: '/hikes/' + path + '/updatejson2',
//           data: data,
//           method: 'PUT'
//         }).then(function(result) {
//           console.log(result);
//           location.reload();
          
//         });
//       },
//     });
//   }; // end onupload function 