Menus = function(){

  this.attachHandlers = function(){
    $('.category-name a').on('click', this.clickCategory);
  }

  this.clickCategory = function(e){
    e.preventDefault();
    var id = $(this).attr('data-category-id');
    $('.menu-items, .category-name a').removeClass('active');
    $('.menu-items[data-category-id="' + id + '"], .category-name[data-category-id="' + id + '"] a').addClass('active');
  }

  this.init = function(){
    this.attachHandlers();
  }

  this.init();

}