class Question {
  String _text;
  bool _correctAnswer;
  Question(this._text, this._correctAnswer);

  bool get correctAnswer => this._correctAnswer;
  String get text => this._text;
}

class ImageQuestion extends Question {
  String imageLocation;
  String text;
  bool correctAnswer;
  ImageQuestion({this.imageLocation, this.text, this.correctAnswer})
      : super(text, correctAnswer);
}
