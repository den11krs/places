// ignore_for_file: directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

import 'package:places/res/app_assets.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SightListAppBar(
        height: 128,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // I guess here I should have my Search bar widget.
              Container(
                height: 68,
                width: double.infinity,
                // TODO Check this color
                // color: AppColors.appBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      // TODO Check this color
                      // color: AppColors.appSecondary3Color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              AppAssets.appSearchIcon,
                              // TODO Check this color
                              // color: AppColors.inactiveBlack,
                              semanticsLabel: 'Search',
                            ),
                          ),
                        ),
                        const Text(
                          'Поиск',
                          style: TextStyle(
                            // TODO Check this color
                            // color: AppColors.inactiveBlack,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              AppAssets.appFilterIcon,
                              // TODO Check this color
                              // color: AppColors.appGreenColor,
                              semanticsLabel: 'Filter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              for (final mock in mocks) ...[
                ColoredBox(
                  // TODO Check this color
                  color: AppLightColors.appBackgroundColor,
                  child: Stack(
                    children: [
                      SightCard(sight: mock),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
      //TODO: Apparently I need to put this BottomNavigationBar into a separate widget to be able to use it easily on diffrent screens.
      bottomNavigationBar: BottomNavigationBar(
        // TODO Check this color
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                // TODO Check this color
                //color: AppColors.appSecondaryColor,
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
                // TODO Check this color
                // color: AppColors.appMainColor,
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
                // TODO Check this color
                // color: AppColors.appSecondaryColor,
                semanticsLabel: 'Favourite',
              ),
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: SvgPicture.asset(
                AppAssets.appSettingsBottomNavigationBar,
                // TODO Check this color
                // color: AppColors.appSecondaryColor,
                semanticsLabel: 'Settings',
              ),
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class SightListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  const SightListAppBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          ColoredBox(
            // TODO Check this color
            color: AppLightColors.appBackgroundColor,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
                child: Text(
                  AppStrings.appBarText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textScaleFactor: 1.0,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    //In Figma 'Line height' = 36px.
                    // To achieve this I use height of 1.125 => fontSize = 32 * 1.125 gives 36
                    height: 1.125,
                    // TODO Check this color
                    // color: AppColors.appSecondaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
