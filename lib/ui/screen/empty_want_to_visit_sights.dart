import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:places/res/app_assets.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

class EmptyWantToVisitSights extends StatelessWidget {
  const EmptyWantToVisitSights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 64,
          height: 64,
          child: SvgPicture.asset(
            AppAssets.appWantToVisit,
            // color: AppColors.appSecondary2Color.withOpacity(0.56),
            semanticsLabel: 'Want to visit empty screen',
          ),
        ),
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
            // color: AppColors.appSecondary2Color.withOpacity(0.56),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(53, 8, 53, 8),
          child: Text(
            AppStrings.wantToVisitEmpty,
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
              // color: AppColors.appSecondary2Color.withOpacity(0.56),
            ),
          ),
        ),
      ],
    );
  }
}
