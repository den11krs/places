import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:places/domain/sight.dart';
import 'package:places/res/app_assets.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 360,
                child: PageView(
                  controller: controller,
                  children: [
                    Image.network(
                      sight.url,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }

                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                    Image.network(
                      sight.url,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }

                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                    Image.network(
                      sight.url,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }

                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 400,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                sight.name,
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  //In Figma 'Line height' = 28.8.
                                  // To achieve this I use height of 1.2 => fontSize = 24 * 1.2 gives 28.8
                                  height: 1.2,
                                  color: AppColors.appSecondaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      sight.type,
                                      textAlign: TextAlign.left,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        //In Figma 'Line height' = 18px.
                                        // To achieve this I use height of 1.285 => fontSize = 14 * 1.285 gives 17.99
                                        height: 1.285,
                                        color: AppColors.appSecondaryColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  const Flexible(
                                    child: Text(
                                      AppStrings.sightClosedUntil,
                                      textAlign: TextAlign.left,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        //In Figma 'Line height' = 18px.
                                        // To achieve this I use height of 1.28 => fontSize = 14 * 1.28 gives 17.92
                                        height: 1.28,
                                        color: AppColors.appSecondary2Color,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        child: Text(
                          sight.details,
                          textAlign: TextAlign.left,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            //In Figma 'Line height' = 18px.
                            // To achieve this I use height of 1.28 => fontSize = 14 * 1.28 gives 17.92
                            height: 1.28,
                            color: AppColors.appSecondaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            const Positioned.fill(
                              child: ColoredBox(
                                color: AppColors.appGreenColor,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.appGoIcon,
                                    color: Colors.white,
                                    semanticsLabel: 'Go',
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'ПОСТРОИТЬ МАРШРУТ',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      //In Figma 'Line height' = 18px.
                                      // To achieve this I use height of 1.28 => fontSize = 14 * 1.28 gives 17.92
                                      height: 1.28,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: AppColors.appSecondary2Color.withOpacity(0.56),
                      thickness: 0.8,
                      indent: 16,
                      endIndent: 16,
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Row(
                        children: [
                          Flexible(
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.appCalendarIcon,
                                    color: AppColors.appSecondary2Color
                                        .withOpacity(0.56),
                                    semanticsLabel: 'Calendar',
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Запланировать',
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.appSecondary2Color
                                          .withOpacity(0.56),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.appHeartIcon,
                                    color: AppColors.appSecondaryColor,
                                    semanticsLabel: 'Favourite',
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'В Избранное',
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      //In Figma 'Line height' = 18px.
                                      // To achieve this I use height of 1.28 => fontSize = 14 * 1.28 gives 17.92
                                      height: 1.28,
                                      color: AppColors.appSecondaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 32,
                    height: 32,
                    color: Colors.white,
                    child: IconButton(
                      iconSize: 12,
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: AppColors.appMainColor,
                        semanticLabel: 'Go back to sight list screen',
                      ),
                      onPressed: () {
                        debugPrint('Lets go back!');
                      },
                    ),
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
