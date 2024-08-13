import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DeskTopScaffold extends StatefulWidget {
  const DeskTopScaffold({super.key});

  @override
  State<DeskTopScaffold> createState() => _DeskTopScaffoldState();
}

class _DeskTopScaffoldState extends State<DeskTopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          // open drawer
          myDrawer,
          // rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // 4 box on top
                AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                // tiles below it
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.pink)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
