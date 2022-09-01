import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/sight_details.dart';

//import 'package:places/ui/screen/sight_details.dart';

void main() {
  runApp(const App());
}

class AppStrings {
  static const String appTitle = 'Places';
  static const String appBarText = 'Список\nинтересных мест';
}

class AppColors {
  static const appMainColor = 0xFF252849;
  static const appSecondaryColor = 0xFF3B3E5B;
  static const appSecondary2Color = 0xFF7C7E92;
  static const appGreenColor = 0xFF4CAF50;
  static const appYellowColor = 0xFFFCDD3D;
  static const appBackgroundColor = 0xFFF5F5F5;
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
            // SightListScreen());
            SightDetails(sight: mocks[3]));
  }
}
