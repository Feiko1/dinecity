$(".rating").rating({
  starCaptions: {
    0.5: 'Bad experience',
    1: 'Would recommend to mother-in-law',
    1.5: 'Should improve',
    2: 'Nice food',
    2.5: 'Nice food & decor',
    3: 'Recommended',
    3.5: 'Recommended & come again',
    4: 'Yummmmmmy',
    4.5: 'Worth the detour',
    5: 'Food for the gods'
  }
});

$(document).on('ready', function(){
  $('.rating-static').rating({ displayOnly: true, step: 0.5 });
});
