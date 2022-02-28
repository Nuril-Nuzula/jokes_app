import 'dart:js';

import 'package:flutter/material.dart';
import 'package:jokes_app/halaman_adaptive.dart';
import 'package:jokes_app/halaman_daftarlistjoke.dart';
import 'package:jokes_app/halaman_detailjoke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ListJokes(),
    );
  }
}
//     pilihanJokeCallback: (pilihan) {
//   Navigator.push(context,
//       MaterialPageRoute(
//           builder: (context) => HalamanDetailJoke(
//                   cekDeviceLayout: false,
//                   joke: pilihan,
//               )));
// }, key: key!, pilihanJoke: null!,);
// Widget buildTablet() {
//   return Row(
//     children: <Widget>[
//       Flexible(child: Material(
//         elevation: 16,
//         child: HalamanListJoke(
//           pilihanJokeCallback: (pilihan){
//             setState(() {
//               pilihanJoke = pilihan;
//             });
//           },
//           pilihanJoke: pilihanJoke, key: key!,
//         ),
//       ),
//       ),
//       Flexible(child: HalamanDetailJoke(
//         cekDeviceLayout: true,
//         joke: pilihanJoke,
//       ))
//     ],
//   );
// }
//}
