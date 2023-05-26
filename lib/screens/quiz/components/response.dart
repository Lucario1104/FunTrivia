import 'Question.dart';

class Response {
  final int response_code;
  final List<Question> results;

  Response({
    required this.response_code,
    required this.results,
  });
}
