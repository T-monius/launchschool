// basics.js

var post = {
  title: 'Lorem ipsum dolor sit ame',
  published: 'April 1, 2015',
  body: 'Sed <span>ut</span> perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.',
  tags: ['hot', 'not hot', 'too hot', 'hot enough'],
};

var posts = [
  post,
  {
    title: 'Integer sit amet dolor in',
    published: 'April 4, 2015',
    body: 'Consectetur adipiscing elit. Integer hendrerit, lectus et tempus lobortis, nunc metus laoreet felis, ac viverra lectus augue non metus. Curabitur non enim vitae nibh pharetra pharetra. Phasellus vestibulum molestie elit. Etiam semper velit eget vestibulum tristique.'
  }
]

$(function() {
  let postTemplate = Handlebars.compile($('#post').html());
  let tagTemplate = Handlebars.compile($('#tag').html());

  Handlebars.registerPartial('tagTemplate', $('#tag').html());

  $('body').append(postTemplate(posts));
});
