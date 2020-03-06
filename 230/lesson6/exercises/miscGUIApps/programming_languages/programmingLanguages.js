// programmingLanguages.js

let ProgrammingLanguagesInfo = (function() {
  let languages = [
    {
      name: 'Ruby',
      description: 'Ruby is a dynamic, reflective, object-oriented, ' +
      'general-purpose programming language. It was designed and developed in the mid-1990s ' +
      'by Yukihiro Matsumoto in Japan. According to its creator, Ruby was influenced by Perl, ' +
      'Smalltalk, Eiffel, Ada, and Lisp. It supports multiple programming paradigms, ' +
      'including functional, object-oriented, and imperative. It also has a dynamic type ' +
      'system and automatic memory management.'
    },

    {
      name: 'JavaScript',
      description: 'JavaScript is a high-level, dynamic, untyped, and interpreted ' +
      'programming language. It has been standardized in the ECMAScript language ' +
      'specification. Alongside HTML and CSS, JavaScript is one of the three core ' +
      'technologies of World Wide Web content production; the majority of websites employ ' +
      'it, and all modern Web browsers support it without the need for plug-ins. JavaScript ' +
      'is prototype-based with first-class functions, making it a multi-paradigm language, ' +
      'supporting object-oriented, imperative, and functional programming styles.'
    },

    {
      name: 'Lisp',
      description: 'Lisp (historically, LISP) is a family of computer programming languages ' +
      'with a long history and a distinctive, fully parenthesized prefix notation. ' +
      'Originally specified in 1958, Lisp is the second-oldest high-level programming ' +
      'language in widespread use today. Only Fortran is older, by one year. Lisp has changed ' +
      'since its early days, and many dialects have existed over its history. Today, the best '+
      'known general-purpose Lisp dialects are Common Lisp and Scheme.'
    }
  ];

  return {
    init: function() {
      this.configureTemplates();
      this.populateLanguageBox();
      return this;
    },
    configureTemplates: function() {
      this.languageBoxTemplate = Handlebars.compile($('#language_list').html());
      this.languageInfo = Handlebars.compile($('#language_info').html());
      Handlebars.registerPartial('language', $('#language_info').html());
    },
    populateLanguageBox: function() {
      $('.language_box').append(this.languageBoxTemplate({ languages: languages }));
      $('.show_less').hide();
      this.shortenParagraphs();
      this.setLinkHandlers();
    },
    shortenParagraph: function(p) {
      return p.text().substring(0, 119) + '...';
    },
    shortenParagraphs: function() {
      $('.language_box p').each( (_, paragraphEl) => {
        let $p = $(paragraphEl);
        // let shortenedPar = $p.text().substring(0, 119) + '...';
        $p.text(this.shortenParagraph($p));
      });
    },
    setLinkHandlers: function() {
      let $showMore = $('.show_more');
      let $showLess = $('.show_less');
      let self = this;

      $showMore.on('click', function(clickEvent) {
        clickEvent.preventDefault();

        $showMore.hide();
        $showLess.show();

        let $clickedLanguage = $(clickEvent.target).closest('li');
        let languageName = $clickedLanguage.find('h2').text();
        let language = languages.find((language) => {
          return language.name === languageName;
        });

        $clickedLanguage.find('p').text(language.description);
      });

      $showLess.on('click', function(clickEvent) {
        clickEvent.preventDefault();

        $showLess.hide();
        $showMore.show();

        let $siblingParagraph = $(clickEvent.target).parent().find('p');
        $siblingParagraph.text(self.shortenParagraph($siblingParagraph));
      });
    },
  };
})();

$(ProgrammingLanguagesInfo.init.bind(ProgrammingLanguagesInfo));
