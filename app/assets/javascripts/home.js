
  $(document).ready(function(){
    $('#nav-icon').on('click', function(e){
      e.preventDefault();
      $('body > header > nav > ul > li').slideToggle();
      console.log("working");
    });
  });
