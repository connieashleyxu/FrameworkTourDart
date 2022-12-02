import 'package:flutter/material.dart';

class UserIntroductions extends StatelessWidget {
  // Constructor
  //const UserIntroductions({super.key, required this.names, required this.introductions});
  const UserIntroductions({Key? key, required this.names, required this.introductions}) : super(key: key);

  // Instance Variables
  final List<String> names;
  final List<String> introductions;
  //final int _count = 0;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  // Constructor
  const MyStatefulWidget({super.key});

  // Stateful Widget
  @override
  State<MyStatefulWidget> createState() => _UserIntroductionsState();
}


class _UserIntroductionsState extends State<MyStatefulWidget> {
  // Instance Variables

  late final List<String> _names;
  late final List<String> _introductions;

  // final _names = <String>[];
  // final _introductions = <String>[];

  // static final List<String> _names = ['John Doe', 'Tom Cruise', 'Johnny Appleseed', 'Connie Xu', 'Allen Almasi'];
  // static final List<String> _introductions = ['I am everyone yet no-one.', 'I am a great actor.', 'This is a generic name.', 'I am a student.', 'I am the professor.'];

  late int _count = 0;

  void _increment() {
    setState(() {
      // Switch introduction and name if name tapped
      if(_count >= _names.length - 1) {
        _count = 0;
      }
      else {
        _count++;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _names = ['John Doe', 'Tom Cruise', 'Johnny Appleseed', 'Connie Xu', 'Allen Almasi'];
    _introductions = ['I am everyone yet no-one.', 'I am a great actor.', 'This is a generic name.', 'I am a student.', 'I am the professor.'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _increment();
                },
                child: Text( // Tap name to change
                    _names[_count],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                  _introductions[_count],
              ),
            ],
          ),
      ),
    );
  }
}