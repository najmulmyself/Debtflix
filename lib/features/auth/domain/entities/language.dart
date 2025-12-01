import 'package:freezed_annotation/freezed_annotation.dart';

enum Language {
  @Freezed(equal: true)
  const en = Language._('en', 'English');
  const es = Language._('es', 'Spanish');
  const fr = Language._('fr', 'French');
  const de = Language._('de', 'German');
  const it = Language._('it', 'Italian');
  const pt = Language._('pt', 'Portuguese');
  const ru = Language._('ru', 'Russian');
  const ja = Language._('ja', 'Japanese');
  const zh = Language._('zh', 'Chinese');
  const ar = Language._('ar', 'Arabic');
  const hi = Language._('hi', 'Hindi');

  const Language._(this.code, this.name);

  @override
  String toString() {
    return code;
  }

  @override
  int get hashCode => Object.hash(code).hashCode;
}