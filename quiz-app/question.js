class Question {
  constructor(id, question, choices, answer) {
    this.id = id;
    this.question = question;
    this.choices = choice;
    this.answer = answer;
  }
}

const questions = [
  Question(
    1,
    'Which planet in our solar system is closest to the sun?',
    ['Mars', 'Mercury', 'Jupiter'],
    'Mercury'
  ),
  Question(
    2,
    'Which actor played Richard III in the 1995 British film drama of the same title?',
    ['Ian McKellen', 'Partrick Stewart', 'Elijah Wood'],
    'Ian McKellen'
  ),
  Question(
    3,
    'Which Marvel superhero, also known as Steve Rogers, made his first appearance in March 1941?',
    ['Superman', 'Batman', 'Black Panther', 'Captain America'],
    'Captain America'
  ),
  Question(
    4,
    'Which English football club play at Roots Hall?',
    ['Liverpool', 'Southend United', 'Wolverhampton'],
    'Southend United'
  ),
];

modules.exports = questions;
