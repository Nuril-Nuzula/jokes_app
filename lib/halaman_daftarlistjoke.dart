import 'package:flutter/material.dart';
import 'package:jokes_app/halaman_adaptive.dart';
import 'package:jokes_app/halaman_detailjoke.dart';
import 'package:jokes_app/joke.dart';



class HalamanListJoke extends StatefulWidget {
  final Joke pilihanjoke;
  final ValueChanged<Joke> pilihanJokeCallback;

  HalamanListJoke({Key? key, required this.pilihanjoke, required this.pilihanJokeCallback})
      : super(key: key);

  @override
  _HalamanListJokeState createState() => _HalamanListJokeState();
}

class _HalamanListJokeState extends State<HalamanListJoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: jokeslist.map((jokes) {
        return Container(
          child: ListTile(
            title: Text(
              jokes.setup,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () => widget.pilihanJokeCallback(jokes),
            selected: widget.pilihanjoke == jokes,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),shape: BoxShape.rectangle
          ),
        );
      }).toList()
    );
  }
}






// class HalamanListJoke extends StatefulWidget {
//   late final Joke pilihanJoke;
//   late final ValueChanged<Joke> pilihanJokeCallback;
//
//   HalamanListJoke(
//       {required Key key,
//       required this.pilihanJokeCallback,
//       required this.pilihanJoke})
//       : super(key: key);
//
//   @override
//   _HalamanListJokeState createState() => _HalamanListJokeState();
// }
//
// class _HalamanListJokeState extends State<HalamanListJoke> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: jokeslist.map((jokes) {
//         return Container(
//           child: ListTile(
//             title: Text(
//               jokes.setup,
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: () => widget.pilihanJokeCallback(jokes),
//             selected: widget.pilihanJoke == jokes,
//           ),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5), shape: BoxShape.rectangle),
//         );
//       }).toList(),
//     );
//   }
// }
class ListJokes extends StatelessWidget {
  const ListJokes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joke App"),
        backgroundColor: Colors.orange,
      ),
        body: ListView.builder(
    itemBuilder: (context, index) {
      late final Joke joke = jokeslist[index];
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailListJoke(jokes: joke);
          }));
        },

        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Text(joke.type)
              ),
              // Expanded(child: Text(joke.setup)
              // ),
              // Expanded(child: Text(joke.punchline)
              // ),
            ],
          ),
        ),
      );
    },
          itemCount: jokeslist.length,
        ),
    );
  }
}


