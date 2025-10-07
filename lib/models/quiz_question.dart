class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffledAndswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
