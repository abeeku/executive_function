// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//= require jquery
//= require jquery_ujs
// require twitter/bootstrap
//= require tasks
//= require fullcalendar
// require jquery.ui.all
// require tree .







$.ajaxSetup({
  beforeSend: function(xhr) {
    xhr.setRequestHeader("Accept", "text/javascript");
  }
});

