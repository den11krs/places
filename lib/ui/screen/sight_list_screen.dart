import 'package:flutter/material.dart';
import 'package:places/main.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 152,
        elevation: 0,
        title: const SizedBox(
          width: double.infinity,
          child: Text(
            'Список\nинтересных мест',
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Roboto',

              // According to height property of TextStyle (https://api.flutter.dev/flutter/painting/TextStyle/height.html)
              // this should give us line-height of 36 => 32 * 1.125 = 36
              height: 1.125,
              fontSize: 32,
              fontWeight: FontWeight.w700,

              color: Color(AppColors.appMainColor),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'Text Widget',
              style: TextStyle(
                fontSize: 40,
                color: Color(AppColors.appGreenColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
