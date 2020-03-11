// multipleChoice.js

let MultipleChoice = (function() {
  let questions = [
    {
      id: 1,
      description: "Who is the author of <cite>The Hitchhiker's Guide to the Galaxy</cite>?",
      options: ['Dan Simmons', 'Douglas Adams', 'Stephen Fry', 'Robert A. Heinlein'],
    },
    {
      id: 2,
      description: 'Which of the following numbers is the answer to Life, the \
                    Universe and Everything?',
      options: ['66', '13', '111', '42'],
    },
    {
      id: 3,
      description: 'What is Pan Galactic Gargle Blaster?',
      options: ['A drink', 'A machine', 'A creature', 'None of the above'],
    },
    {
      id: 4,
      description: 'Which star system does Ford Prefect belong to?',
      options: ['Aldebaran', 'Algol', 'Betelgeuse', 'Alpha Centauri'],
    },
  ];
  let answerKey = { '1': 'Douglas Adams', '2': '42', '3': 'A drink', '4': 'Betelgeuse' };

  return {
    init: function() {
      this.initializeTemplates();
      this.renderForm();
      this.setHandlers();

      return this;
    },
    initializeTemplates: function() {
      this.formTemplate = Handlebars.compile($('#form_template').html());
    },
    renderForm: function() {
      let renderedForm = this.formTemplate({ questions: questions });
      $('form fieldset').append(renderedForm);
    },
    setHandlers: function() {
      this.submitHandler();
      this.resetHandler();
    },
    submitHandler: function() {
      let self = this;

      $('form').on('submit', function(submitEvent) {
        submitEvent.preventDefault();
        let $form = $(submitEvent.target);
        let answers = $form.serializeArray();


        answers = self.markAnswers(answers);
        self.displayAnswers(answers);
        self.dipslayUnanswered(answers);
        $('button[type="submit"]').attr('disabled', 'disabled');
      });
    },
    markAnswers: function(answers) {
      return answers.map(this.markAnswer, this);
    },
    markAnswer: function(answerObject) {
      let id = this.getAnswerID(answerObject);
      let answer = answerObject.value;
      let correctAnswer = answerKey[id];

      if (answer === correctAnswer) {
        answerObject.mark = 'correct';
      } else {
        answerObject.mark = 'incorrect';
        answerObject.correctAnswer = correctAnswer;
      }

      return answerObject;
    },
    displayAnswers: function(answers) {
      answers.forEach(this.displayAnswer, this);
    },
    displayAnswer: function(answerObject) {
      let id = this.getAnswerID(answerObject);
      let $messageElement = $(`dd[data-msgID="${id}"]`);

      if (answerObject.mark === 'correct') {
        $messageElement.addClass('correct');
        $messageElement.text('Correct Answer');
        $messageElement.show();
      } else {
        $messageElement.addClass('incorrect');
        $messageElement.text(`Wrong Answer. The correct answer is: ${answerObject.correctAnswer}`);
        $messageElement.show();
      }
    },
    getAnswerID: function(answerObject) {
      return answerObject.name.substr(-1);
    },
    dipslayUnanswered: function(answers) {
      let missingIDs = this.getMissnigIDs(answers);

      missingIDs.forEach( (missingID) => {
        let answer = this.getAnswerForID(missingID);
        let msg = `You didn't answer this question. Correct answer is: ${answer}`;
        $(`dd[data-msgID="${missingID}"]`).text(msg)
                                          .addClass('incorrect')
                                          .show();
      });
    },
    getMissnigIDs: function(answers) {
      let allIDs = questions.map( (question) => question.id );
      let answerIDs = answers.map( (answerObject) => {
        return Number(this.getAnswerID(answerObject));
      }, this);
      let missingIDs = allIDs.filter( (id) => !answerIDs.includes(id));

      return missingIDs;
    },
    getAnswerForID: function(id) {
      return answerKey[id];
    },
    resetHandler: function() {
      $('form').on('reset', function(resetEvent) {
        $('.msg').hide();
        $('button[type="submit"]').removeAttr('disabled');
      });
    },
  }
})();

$(MultipleChoice.init.bind(MultipleChoice));
