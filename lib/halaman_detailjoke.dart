import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/halaman_adaptive.dart';
import 'package:jokes_app/joke.dart';

class HalamanDetailJoke extends StatefulWidget {
  late final bool cekDeviceLayout;
  late final Joke joke;

  HalamanDetailJoke({required Key key, required this.cekDeviceLayout, required this.joke})
      : super(key: key);

  @override
  _HalamanDetailJokeState createState() => _HalamanDetailJokeState();
}

class _HalamanDetailJokeState extends State<HalamanDetailJoke> {
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(8.0),
        child: Text(widget.joke.setup),
        ),
        Padding(padding: const EdgeInsets.all(8.0),
        child: Text(widget.joke.punchline),
        ),
      ],
    );

    if (widget.cekDeviceLayout == true) {
      return Center(child: content);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.joke.type),
      ),
      body: Center(child: content),
      backgroundColor: Colors.orange,
    );
  }
}



//-----------------------------------------------------\\

class DetailListJoke extends StatelessWidget {
  late final Joke jokes;

  DetailListJoke({required this.jokes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(jokes.setup),
              Text(jokes.punchline)
            ],
          ),
        ),
      ),
    );
  }
}

