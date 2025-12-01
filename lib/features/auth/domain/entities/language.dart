import 'package:freezed_annotation/freezed_annotation.dart';

enum Language {
  en('en', 'English'),
  es('es', 'Spanish'),
  fr('fr', 'French'),
  de('de', 'German'),
  it('it', 'Italian'),
  pt('pt', 'Portuguese'),
  ru('ru', 'Russian'),
  ja('ja', 'Japanese'),
  zh('zh', 'Chinese'),
  ar('ar', 'Arabic'),
  hi('hi', 'Hindi');

  final String code;
  final String name;

  const Language(this.code, this.name);

  @override
  String toString() => code;
}
