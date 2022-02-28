import 'package:flutter/material.dart';
import 'package:jokes_app/halaman_daftarlistjoke.dart';
import 'package:jokes_app/joke.dart';

import 'halaman_detailjoke.dart';

class HalamanAdaptive extends StatefulWidget {
  @override
  _HalamanAdaptiveState createState() => _HalamanAdaptiveState();
}

class _HalamanAdaptiveState extends State<HalamanAdaptive> {
late final Joke pilihanjoke;


    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      throw UnimplementedError();
    }
    }

    @override
    Widget build(BuildContext context) {
      // Widget content;
      // var ukuranLayar = MediaQuery.of(data: data, child: child)

      return Scaffold(
        appBar: AppBar(
          title: Text("Joke App"),
        ),
        backgroundColor: Colors.orange,
      );
    }

    // Widget buildNotTable() {
    //   return HalamanListJoke(
    //       pilihanJokeCallback: (pilihan) {
    //         Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //                 builder: (context) => HalamanDetailJoke(
    //                   cekDeviceLayout: false,
    //                 joke: pilihan, key: null!,
    //                 )));
    //       }, key: null!, pilihanJoke: null!,
    //   );
    // }
    // Widget buildTablet() {
    //   return Row(
    //     children: <Widget>[
    //       Flexible(child: Material(
    //         elevation: 16,
    //         child: HalamanListJoke(
    //           pilihanJokeCallback: (pilihan){
    //             setState(() {
    //               pilihanjoke = pilihan;
    //             });
    //           },
    //           pilihanJoke: pilihanjoke, key: null!,
    //         ),
    //       ),
    //       ),
    //       Flexible(child: HalamanDetailJoke(
    //         cekDeviceLayout: true,
    //         joke: pilihanjoke, key: null!,
    //       ))
    //     ],
    //   );
    // }





