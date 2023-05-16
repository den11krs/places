import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/visiting_screen.dart';

import 'package:places/res/app_assets.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';
import 'package:places/ui/screen/res/themes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  final isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: isDarkTheme ? darkTheme : lightTheme,
      home: const SightListScreen(),
      //TODO: Delete these lines after you implement normal navigation

      // const SightListScreen(),
      // const VisitingScreen(),
      // SightDetails(sight: mocks[0]),
      // SightCard(sight: mocks[0]),
    );
  }
}
