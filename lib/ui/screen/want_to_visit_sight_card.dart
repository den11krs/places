import 'package:flutter/material.dart';

import 'package:places/domain/sight.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

class WantToVisitSightCard extends StatelessWidget {
  final Sight sight;

  const WantToVisitSightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: ColoredBox(
        // TODO Check this color
        color: Theme.of(context).scaffoldBackgroundColor,
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
                          height: 1.15, // This gives me 20px of line height
                          // TODO Check this color
                          // color: AppColors.appSecondaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        AppStrings.sightPlanned,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.2, // This gives me 18px of line height
                          // TODO Check this color
                          // color: AppColors.appGreenColor,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        // TODO: Find out where I should get this info for each place.
                        AppStrings.sightClosedUntil,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.2, // This gives me 18px of line height
                          // TODO Check this color
                          // color: AppColors.appSecondary2Color,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // The type of the sight in the left upper corner of the sight card.
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
                    height: 1.2, // This gives me 18px of line height
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
