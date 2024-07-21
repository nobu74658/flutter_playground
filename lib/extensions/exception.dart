extension ExceptionExtension on Exception {
  String get message => toString().substring(11);
}
