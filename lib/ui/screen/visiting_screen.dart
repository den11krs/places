import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/res/app_assets.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/ui/screen/custom_tabbar.dart';
import 'package:places/ui/screen/empty_visited_sights.dart';
import 'package:places/ui/screen/empty_want_to_visit_sights.dart';
import 'package:places/ui/screen/visited_sights.dart';
import 'package:places/ui/screen/want_to_visit_sights.dart';

class VisitingScreen extends StatelessWidget {
  const VisitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const showEmptyScreensSwitcher = false;

    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            //TODO: Change the background color in themes
            backgroundColor: Colors.white,
            centerTitle: true,
            titleTextStyle: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              //In Figma 'Line height' = 24
              // To achieve this I use height of 1.333 => fontSize = 18 * 1.33 gives 24
              height: 1.333,
              color: AppColors.appMainColor,
            ),
            title: const Text(
              'Избранное',
            ),
            bottom: const CustomTabBar(),
          ),
          body: const TabBarView(
            children: [
              if (showEmptyScreensSwitcher)
                EmptyWantToVisitSights()
              else
                WantToVisitSights(),
              if (showEmptyScreensSwitcher)
                EmptyVisitedSights()
              else
                VistedSights(),
            ],
          ),
          //TODO: Apparently I need to put this BottomNavigationBar into a separate widget to be able to use it easily on diffrent screens.
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(
                    AppAssets.appListBottomNavigationBar,
                    color: AppColors.appSecondaryColor,
                    semanticsLabel: 'List',
                  ),
                ),
                label: 'List',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(
                    AppAssets.appMapBottomNavigationBar,
                    color: AppColors.appSecondaryColor,
                    semanticsLabel: 'Navigation',
                  ),
                ),
                label: 'Map',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(
                    AppAssets.appHeartBottomNavigationBar,
                    color: AppColors.appMainColor,
                    semanticsLabel: 'Favourite',
                  ),
                ),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(
                    AppAssets.appSettingsBottomNavigationBar,
                    color: AppColors.appSecondaryColor,
                    semanticsLabel: 'Settings',
                  ),
                ),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
