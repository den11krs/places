import 'package:flutter/material.dart';
import 'package:places/res/app_colors.dart';

class CustomTabBar extends StatelessWidget with PreferredSizeWidget {
  const CustomTabBar({super.key});

  @override
  Size get preferredSize {
    return const Size.fromHeight(48);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(
            AppColors.appBackgroundColor,
          ),
        ),
        child: TabBar(
          padding: EdgeInsets.zero,
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            //In Figma 'Line height' = 18px.
            // To achieve this I use height of 1.285 => fontSize = 14 * 1.285 gives 17.99
            height: 1.285,
          ),
          unselectedLabelColor: const Color(AppColors.inactiveBlack),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            //In Figma 'Line height' = 18px.
            // To achieve this I use height of 1.285 => fontSize = 14 * 1.285 gives 17.99
            height: 1.285,
          ),
          indicatorWeight: 0.0,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(AppColors.appSecondaryColor),
          ),
          tabs: const [
            Tab(
              height: 40,
              child: Text('Хочу посетить'),
            ),
            Tab(
              height: 40,
              child: Text('Посетил'),
            ),
          ],
        ),
      ),
    );
  }
}
