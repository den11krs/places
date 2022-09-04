import 'package:flutter/material.dart';
// import 'package:places/mocks.dart';
// import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
//import 'package:places/ui/screen/sight_details.dart';

// import 'package:places/res/app_assets.dart';
//import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppStrings.appTitle,
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        home:
            // SightCard(sight: mocks[0]));
            SightListScreen());
    // SightDetails(sight: mocks[3]));
  }
}
