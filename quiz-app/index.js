const questions = [
  {
    id: 1,
    question: 'Which planet in our solar system is closest to the sun?',
    choices: ['Mars', 'Mercury', 'Jupiter'],
    answer: 'Mercury',
  },
  {
    id: 2,
    question:
      'Which actor played Richard III in the 1995 British film drama of the same title?',
    choices: ['Ian McKellen', 'Partrick Stewart', 'Elijah Wood'],
    answer: 'Ian McKellen',
  },
  {
    id: 3,
    question:
      'Which Marvel superhero, also known as Steve Rogers, made his first appearance in March 1941?',
    choices: ['Superman', 'Black Panther', 'Captain America'],
    answer: 'Captain America',
  },
  {
    id: 4,
    question: 'Which English football club play at Roots Hall?',
    choices: ['Liverpool', 'Southend United', 'Wolverhampton'],
    answer: 'Southend United',
  },
];

const textOne = document.getElementById('t-one');
const textTwo = document.getElementById('t-two');
const textThree = document.getElementById('t-three');
const question = document.querySelector('.question-text');
const questionChoices = document.querySelector('.question-choices');
const submitButton = document.querySelector('button');

let questionNumber = 0;
let answer = undefined;

function loadQuiz() {
  const currentQuestion = questions[questionNumber];
  let currentAnswer = 0;
  question.textContent = currentQuestion.question;
  textOne.textContent = currentQuestion.choices[currentAnswer];
  textTwo.textContent = currentQuestion.choices[currentAnswer + 1];
  textThree.textContent = currentQuestion.choices[currentAnswer + 2];
  submitButton.addEventListener('click', () => {
    if (questionNumber < questions.length) {
      loadQuiz();
      //   return;
      //   questionNumber;
    } else {
      alert('You finished! Do this again later.👋');
    }
    const selectedId = getSelected();
    console.log(selectedId);
    const chosenAnswer = document.querySelectorAll('answer')[selectedId];
    console.log(chosenAnswer);

    // return;
    // questionNumber++;
  });
}

const getSelected = () => {
  const answers = document.querySelectorAll('.answer');
  for (i = 0; i < answers.length; i++) {
    if (answers[i].checked) {
      answer = i;
    }
  }
  if (answer) {
    return answer;
  }
};

loadQuiz();
