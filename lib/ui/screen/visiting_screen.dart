import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_assets.dart';
import 'package:places/ui/screen/custom_tabbar.dart';

class VisitingScreen extends State with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //toolbarHeight: 102,
            elevation: 0,
            //TODO: Do I need this transparent color? Why is the background blue without it?
            // How  can I change this behaviour? It definitely has to do with themes.
            backgroundColor: Colors.white,

            centerTitle: true,
            titleTextStyle: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              //In Figma 'Line height' = 24
              // To achieve this I use height of 1.333 => fontSize = 18 * 1.33 gives 24
              height: 1.333,
              color: Color(AppColors.appMainColor),
            ),
            title: const Text(
              'Избранное',
            ),
            bottom: const CustomTabBar(),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: SvgPicture.asset(
                      AppAssets.appWantToVisit,
                      color: const Color(AppColors.appSecondary2Color)
                          .withOpacity(0.56),
                      semanticsLabel: 'Want to visit empty screen',
                    ),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 24,
                  // ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Пусто',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      //In Figma 'Line height' = 24px.
                      // To achieve this I use height of 1.33 => fontSize = 18 * 1.33 gives 23.94
                      height: 1.33,
                      color: const Color(AppColors.appSecondary2Color)
                          .withOpacity(0.56),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(53, 8, 53, 8),
                    child: Text(
                      'Отмечайте понравившиеся места и они появиятся здесь.',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        //In Figma 'Line height' = 18px.
                        // To achieve this I use height of 1.285 => fontSize = 14 * 1.285 gives 17.99
                        height: 1.285,
                        color: const Color(AppColors.appSecondary2Color)
                            .withOpacity(0.56),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: SvgPicture.asset(
                      AppAssets.appVisited,
                      color: const Color(AppColors.appSecondary2Color)
                          .withOpacity(0.56),
                      semanticsLabel: 'Visited places empty screen',
                    ),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 24,
                  // ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Пусто',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      //In Figma 'Line height' = 24px.
                      // To achieve this I use height of 1.33 => fontSize = 18 * 1.33 gives 23.94
                      height: 1.33,
                      color: const Color(AppColors.appSecondary2Color)
                          .withOpacity(0.56),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(53, 8, 53, 8),
                    child: Text(
                      'Завершите маршрут, чтобы место попало сюда.',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        //In Figma 'Line height' = 18px.
                        // To achieve this I use height of 1.285 => fontSize = 14 * 1.285 gives 17.99
                        height: 1.285,
                        color: const Color(AppColors.appSecondary2Color)
                            .withOpacity(0.56),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            // unselectedItemColor: Colors.grey,
            // selectedItemColor: Colors.red,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,

            currentIndex: tabController.index,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(
                    AppAssets.appListBottomNavigationBar,
                    color: const Color(AppColors.appSecondaryColor),
                    //color: _currentIndex == 0 ? Colors.red : Colors.black,
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
                    color: const Color(AppColors.appSecondaryColor),
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
                    color: const Color(AppColors.appMainColor),
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
                    color: const Color(AppColors.appSecondaryColor),
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
