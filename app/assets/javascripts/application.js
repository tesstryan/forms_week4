// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require pickadate/picker
 //= require pickadate/picker.date
//= require_tree .

// $(function() {

  // $("input.field-check").focus(function() {
  //   $(this).next( "p.warning" ).css( "display", "block" );
  //   $(this).css( "margin-bottom", "0px")
  // });

  // $("input.field-check").blur(function() {
  //   $(this).next( "p.warning" ).css( "display", "none" );
  //   $(this).css( "margin-bottom", "10px")
  // });

// });

$(function(){
    $(".showpassword").each(function(index,input) {
        var $input = $(input);
        $('<label class="showpasswordlabel"/>').append(
            $("<input type='checkbox' class='showpasswordcheckbox' />").click(function() {
                var change = $(this).is(":checked") ? "text" : "password";
                var rep = $("<input type='" + change + "' />")
                    .attr("id", $input.attr("id"))
                    .attr("name", $input.attr("name"))
                    .attr('class', $input.attr('class'))
                    .val($input.val())
                    .insertBefore($input);
                $input.remove();
                $input = rep;
             })
        ).append($("<span/>").text(" Show password")).insertAfter($input);
    });
});


$(function(){ $('.datepicker').pickadate(); }):

$(function(){ $(document).foundation(); }):


