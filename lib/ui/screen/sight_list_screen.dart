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
              for (final mock in mocks) ...[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Stack(
                    children: [
                      SightCard(sight: mock),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                          child: SvgPicture.asset(
                            AppAssets.appHeartIcon,
                            color: Colors.white,
                            height: 24,
                            width: 24,
                            semanticsLabel: 'Like',
                          ),
                        ),
                      ),
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
                color: AppColors.appMainColor,
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
                color: AppColors.appSecondaryColor,
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
                color: AppColors.appSecondaryColor,
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
          SizedBox(
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
                  color: AppColors.appSecondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
