// This is a manifest file that'll be compiled into edit/edit.js, which will include all the files
// listed below.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.remotipart
//= require trumbowyg/trumbowyg
//= require trumbowyg/trumbowyg.noembed
//= require trumbowyg/trumbowyg.table
//= require edit/trumbowyg_initializer
//= require vitrage/vitrage

// // adding of new nested object
// function add_fields(link, association, content) {
//   var new_id = new Date().getTime();
//   var regexp = new RegExp("new_" + association, "g")
//   $(link).before(content.replace(regexp, new_id));
// }

$(document).ready(function() {
  // Vitrage event listeners
  if ((event_provider = $(".vtrg-add-new-wrapper")).length) {
    // // Show block event listener
    // event_provider.on("vitrageshowed", function(evnt, editWrapper) {
    // });

    // Create new block event listener
    event_provider.on("vitragenew", function(evnt, editWrapper) {
      initWYSIWYGeditor($(editWrapper));
    });

    // Enter edit block mode event listener
    event_provider.on("vitrageedit", function(evnt, editWrapper) {
      initWYSIWYGeditor($(editWrapper));
    });
  }
});
