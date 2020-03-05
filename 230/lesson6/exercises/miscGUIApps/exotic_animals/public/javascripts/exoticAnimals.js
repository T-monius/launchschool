// exoticAnimals.js

var animals = [
  {
    name: 'blackbuck',
    caption: 'Nulla sed tempor velit. Maecenas eget ipsum a est faucibus feugiat. Aliquam enim risus, interdum sit amet nisl sit amet, scelerisque placerat mauris. Cras vitae eleifend felis, a ultrices purus. Nullam molestie, metus ut commodo maximus, diam risus varius nibh, ac commodo quam libero ac odio. Nulla lectus magna, dapibus sit amet leo in, ultrices dictum augue. Suspendisse pulvinar risus et nunc porttitor vulputate. ',
  }, {
    name: 'golden_pheasant',
    caption: 'Praesent imperdiet pulvinar libero in euismod. Nam molestie vitae libero at eleifend. In consequat, lorem blandit tincidunt condimentum, lectus ipsum lobortis mi, ut rutrum mi odio ac ipsum.',
  }, {
    name: 'quetzal',
    caption: 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lorem est, laoreet in felis ac, rutrum ullamcorper nisi. Maecenas sit amet diam hendrerit, varius quam ac, posuere quam. Quisque pulvinar mollis turpis a tempor. Phasellus sollicitudin dolor mauris, vitae maximus mi rhoncus a. Mauris fermentum vulputate arcu ac volutpat. ',
  }, {
    name: 'bird-of-paradise',
    caption: 'Quisque id rutrum mauris, sit amet semper erat. Suspendisse dolor purus, efficitur ut aliquet quis, luctus id justo. Aliquam eget nulla odio. Donec nisi eros, ultrices ut neque id, aliquam bibendum nibh. Sed malesuada ex justo, sed ultricies nisi convallis at. In dolor orci, fringilla in ultricies at, dapibus a mi. Nulla eget libero laoreet, tristique quam ut, scelerisque quam.',
  }, {
    name: 'lion',
    caption: 'In feugiat, purus id aliquam maximus, odio nibh porta urna, ut consectetur lectus tortor sed velit. Praesent pretium nunc imperdiet felis tristique consequat. Vivamus augue sem, imperdiet eget ante quis, pharetra vestibulum sapien. Praesent lobortis justo ante, sit amet posuere massa hendrerit mattis.',
  }, {
    name: 'squid',
    caption: 'Aliquam in sapien bibendum, volutpat ante non, suscipit dui. Donec rutrum, ligula vel posuere laoreet, turpis magna elementum turpis, sit amet vehicula elit diam quis dolor. Phasellus volutpat vel velit sed laoreet. Praesent rhoncus pulvinar sem at auctor. Cras pharetra bibendum ante, sed tincidunt justo fermentum eu.',
  }, {
    name: 'genet',
    caption: 'Morbi at nunc in elit varius ullamcorper in non sem. Suspendisse vel odio eu dolor pulvinar mollis ac at dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
  }, {
    name: 'lorikeet',
    caption: 'Etiam quam metus, fringilla posuere felis non, dignissim congue ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec at fermentum arcu. ',
  }];

$(function() {
  let animalGallery = Handlebars.compile($('#animal_gallery').html());
  let animalTemplate = Handlebars.compile($('#animal').html());

  Handlebars.registerPartial('animal', $('#animal').html());

  $('main').append(animalGallery({ animals: animals }));

  $('.animal_gallery').on('mouseover', 'img', function(focusEvent) {
    let $animalPic = $(focusEvent.target);
    let left = false;

    setTimeout(function() {
      if(!left) {
        $animalPic.next('figcaption').show();
      }
    }, 2000);

    $animalPic.on('mouseout', function() {
      left = true;
    });
  });

  $('.animal_gallery').on('mouseout', 'img', function(focusEvent) {
    let $animalPic = $(focusEvent.target);

    $animalPic.next('figcaption').hide();
  });
});
