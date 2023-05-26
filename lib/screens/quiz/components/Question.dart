class Question {
   String question;
   String category;
   String type;
   String difficulty;
   String correct_answer;
   List<String> incorrect_answers;

  Question(
      {required this.category,
        required this.difficulty,
        required this.question,
        required this.type,
        required this.incorrect_answers,
        required this.correct_answer});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Which club of IITG is the best club?",
    "options": [
      'Coding Club',
      '.ai Club',
      'Consulting and Analytics Club',
      'Finance and Economics Club'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Which IIT is the best IIT?",
    "options": ['IITG', 'IITB', 'IITM', 'IITD'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Cout<<', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
