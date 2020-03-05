// gallery.js

$(function() {
  let $slides = $('#slides');
  let $sectionHeader = $('section > header');
  let $comments = $('#comments');
  let photos = null;
  let currentPhotoId = null;
  let photosTemplate = Handlebars.compile($('#photos').html());
  let photoInformation = Handlebars.compile($('#photo_information').html());
  let commentsTemplate = Handlebars.compile($('#photo_comments').html());
  let comment = Handlebars.compile($('#photo_comment').html());
  let $newCommentForm = $("form[action='/comments/new']");

  Handlebars.registerPartial('comment', $('#photo_comment').html());
  $slides.empty();
  $sectionHeader.empty();
  $comments.find('ul').empty();

  $.ajax({
    url: '/photos',
    type: 'GET',
    dataType: 'json',
  }).done(function(json) {
    photos = json;
    currentPhotoId = photos[0].id;
    renderPhotos();
    renderPhotoInformation(0);
    getCommentsFor(0);
  });

  $('.prev').on('click', function(clickEvent) {
    clickEvent.preventDefault();

    getAndRenderPreviousPhoto();
    renderCommentsAndInformationForCurrentPhoto();
  });

  $('.next').on('click', function(clickEvent) {
    clickEvent.preventDefault();

    getAndRenderNextPhoto();
    renderCommentsAndInformationForCurrentPhoto();
  });

  $sectionHeader.on('click', '.button.like', function(clickEvent) {
    clickEvent.preventDefault();

    $.ajax({
      url: '/photos/like',
      data: {
        photo_id: currentPhotoId,
      },
      type: 'POST',
      dataType: 'json',
    }).done(function(json) {
      updateCurrentPhotoLikes(json);
      renderInformationForCurrentPhoto();
    });
  });

  $sectionHeader.on('click', '.button.favorite', function(clickEvent) {
    clickEvent.preventDefault();

    $.ajax({
      url: '/photos/favorite',
      data: {
        photo_id: currentPhotoId,
      },
      type: 'POST',
      dataType: 'json',
    }).done(function(json) {
      updateCurrentPhotoFavorites(json);
      renderInformationForCurrentPhoto();
    });
  });

  $newCommentForm.on('submit', function(submitEvent) {
    submitEvent.preventDefault();

    $.ajax({
      url: '/comments/new',
      data: $newCommentForm.serialize(),
      type: 'POST',
    }).done(function(commentJSON) {
      $comments.find('ul')
               .append(comment(commentJSON));
      $newCommentForm.trigger('reset');
    });
  });

  function updateCurrentPhotoFavorites(favorites) {
    let photo = photos.find( (photo) => {
      return photo.id === currentPhotoId;
    });

    photo.favorites = favorites.total;
  }

  function updateCurrentPhotoLikes(likes) {
    let photo = photos.find( (photo) => {
      return photo.id === currentPhotoId;
    });

    photo.likes = likes.total;
  }

  function getAndRenderPreviousPhoto() {
    let $photos = $('#slides figure');
    let $currentPhoto;
    let $previousPhoto;

    if (currentPhotoId) {
      $currentPhoto = $photos.filter((_, el) => {
        return Number($(el).data('id')) === currentPhotoId;
      });

      if ($currentPhoto.prev().length !== 0) {
        $previousPhoto = $currentPhoto.prev();
      } else {
        $previousPhoto = $photos.eq(-1);
      }

      $currentPhoto.fadeOut(500, function() {
        $previousPhoto.fadeIn(500);
      });

      currentPhotoId = Number($previousPhoto.data('id'))
    }
  }

  function getAndRenderNextPhoto() {
    let $photos = $('#slides figure');
    let $currentPhoto;
    let $nextPhoto;

    if (currentPhotoId) {
      $currentPhoto = $photos.filter((_, el) => {
        return Number($(el).data('id')) === currentPhotoId;
      });

      if ($currentPhoto.next().length !== 0) {
        $nextPhoto = $currentPhoto.next();
      } else {
        $nextPhoto = $photos.eq(0);
      }

      $currentPhoto.fadeOut(500, function() {
        $nextPhoto.fadeIn(500);
      });

      currentPhotoId = Number($nextPhoto.data('id'));
    }
  }

  function renderPhotos() {
    $slides.append(photosTemplate({ photos: photos }));
  }

  function renderCommentsAndInformationForCurrentPhoto() {
    let currentPhotoIDX = photos.findIndex( (photo) => {
      return photo.id === currentPhotoId;
    });

    renderPhotoInformation(currentPhotoIDX);
    getCommentsFor(currentPhotoIDX);
  }

  function renderInformationForCurrentPhoto() {
    let currentPhotoIDX = photos.findIndex( (photo) => {
      return photo.id === currentPhotoId;
    });

    renderPhotoInformation(currentPhotoIDX);
  }

  function renderPhotoInformation(idx) {
    $sectionHeader.empty()
                  .append(photoInformation(photos[idx]));    
  }

  function getCommentsFor(idx) {
    $.ajax({
      url: `/comments?photo_id=${photos[idx].id}`,
      dataType: 'json',
    }).done(function(json) {
      $comments.find('ul')
               .empty()
               .append(commentsTemplate({ comments: json }));
    });
  }
});
