$('.element-overlay').on('click', function(event) {
  if(!$(event.target).closest('.element-inner').length && !$(event.target).is('.element-inner')) {
     $('.element-overlay').fadeOut(); // Or you can use removeClass if use any classe like 'is-active' to show your content
   }
});