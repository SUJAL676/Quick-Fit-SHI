import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Challenge_Main_Page extends StatefulWidget {
  const Challenge_Main_Page({super.key});

  @override
  State<Challenge_Main_Page> createState() => _Challenge_Main_PageState();
}

class _Challenge_Main_PageState extends State<Challenge_Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            height: 300,
            // child: ScrollSnapList(
            //   itemBuilder: (BuildContext , int ) {  },
            //   itemCount: 10,
            //   itemSize: null,
            //   onItemFocus: (int ) {  },
            //
            // ),
          )
        ],
      ),
    );
  }
}
