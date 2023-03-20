import 'package:flutter/material.dart';

import 'package:places/domain/sight.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: ColoredBox(
        color: AppColors.appBackgroundColor,
        child: Stack(
          children: [
            Column(
              children: [
                // The first section with the photo of the sight
                SizedBox(
                  height: 96,
                  width: double.infinity,
                  child: Image.network(
                    sight.url,
                    fit: BoxFit.fitWidth,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }

                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                // The second section with the name and description of the sight
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        sight.name,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          //In Figma 'Line height' = 20px.
                          // To achieve this I use height of 1.25 => fontSize = 16 * 1.25 gives 20
                          height: 1.25,
                          color: AppColors.appSecondaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
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
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  sight.type,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    //In Figma 'Line height' = 18px.
                    // To achieve this I use height of 1.28 => fontSize = 14 * 1.28 gives 17.92
                    height: 1.28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
