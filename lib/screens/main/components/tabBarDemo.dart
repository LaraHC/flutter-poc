import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff5808e5),
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: 'DOGS', icon: Icon(Icons.favorite)),
                    Tab(text: 'CATS', icon: Icon(Icons.music_note)),
                    Tab(text: 'BIRDS', icon: Icon(Icons.search)),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Center(child: Text('DOGS')),
                  Center(child: Text('CATS')),
                  Center(child: Text('BIRDS')),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
