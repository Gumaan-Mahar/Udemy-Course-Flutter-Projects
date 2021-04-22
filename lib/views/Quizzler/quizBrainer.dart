import 'package:udemy_project/models/message.dart';

class QuizBrain {
  List listOfQuestions = [
    Question("Burj-e-Khalifa is the biggest building in the world:", true),
    Question("Micheal Jordan is the fastest man alive:", false),
    ImageQuestion(
        imageLocation: "question2.jpg",
        text: "Green and Red are total 9 Gummy Bears:",
        correctAnswer: true),
    Question(
        "Ears and Nose are two parts of human body that never stop growing:",
        true),
    Question(
        "In the Victorian times, it was common practice to take off both your shoes and rub them together for luck before entering a house:",
        false),
    Question("Bananas were first imported to England in 1888:", true),
    Question(
        "Fruit flies were the first living creatures sent into space:", true),
    Question("An octopus has five hearts:", false),
    Question("Roger Federer has won the most Wimbledon titles of any player:",
        false),
    Question("The first television was invented in 1927:", true),
    Question(
        "Darth Vader famously says the line “Luke, I am your father” in The Empire Strikes Back:",
        false),
    Question("The deepest part of the ocean is 507,814 feet below sea level:",
        false),
    Question("Stephen Hawking declined a knighthood from the Queen:", true),
    Question("Napoleon was of below-average height:", false),
    Question(
        "George Harrison plays lead guitar on While My Guitar Gentle Weeps:",
        false),
    Question(
        "Japan and Russia did not sign a peace treaty after World War Two so are technically still at war:",
        true),
    Question("If you’re born between May 1st and 20th, then you’re a Gemini:",
        false),
    Question(
        "Flying in an aeroplane is statistically safer than driving in a car:",
        true),
    Question("The Great Wall of China is visible from space:", false),
    Question("Goldfish only have a memory of three seconds:", false),
  ];

  // Question getQuestionText(int questionIndex) {
  //   return _listOfQuestions[questionIndex].text;
  // }
}
