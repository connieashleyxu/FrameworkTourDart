import 'package:flutter/material.dart';
import 'user_introduction.dart';
import 'user_introductions.dart';

void main() {
  // runApp(const UserIntroduction (
  //   name: 'John Doe',
  //   introduction: 'I am everyone yet no one at the same time.',
  // ));
  runApp(const UserIntroductions (
    names: ['John Doe', 'Tom Cruise', 'Johnny Appleseed', 'Connie Xu', 'Allen Almasi'],
    introductions: ['I am everyone yet no-one.', 'I am a great actor.', 'This is a generic name.', 'I am a student.', 'I am the professor.'],
  ));
}

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    home: UserIntroductions(names: ['John Doe', 'Tom Cruise', 'Johnny Appleseed', 'Connie Xu', 'Allen Almasi'],
      introductions: ['I am everyone yet no-one.', 'I am a great actor.', 'This is a generic name.', 'I am a student.', 'I am the professor.'],),
  );
}
