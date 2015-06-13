$(function(){
  $('.editor').editable({
    inlineMode: false
  });

  $('.sortable').sortable({
    axis: 'y',
    handle: '.glyphicon-move'
  });

  $('.sortable').on('sortupdate', function(event, ui){
    var data = { model_name: $(this).attr('data-model-name') };
    var models = {};
    $(this).find('.ui-sortable-handle').each(function(index, el){
      models[$(this).attr('data-id')] = index;
    });
    data.models = models;
    $.post($(this).attr('data-update-url'), data, function(response){
      var $flash = response.success ? $('.sort-success') : $('.sort-error');
      $flash.fadeIn(300, function(){
        setTimeout(function(){
          $('.sort-success').fadeOut(300);
        }, 1750);
      });
    });
  });
});