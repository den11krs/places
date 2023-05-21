import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/app_assets.dart';
import 'package:places/res/app_strings.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        // TODO Check this color
        //color: AppLightColors.appSurfaceColor,
        child: Column(
          children: [
            Stack(
              children: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
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
                          //TODO Change this color
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        AppAssets.appHeartIcon,
                        // TODO Check this color
                        color: Colors.white,
                        height: 24,
                        width: 24,
                        semanticsLabel: 'Like',
                      ),
                      onPressed: () {
                        const snackBar =
                            SnackBar(content: Text('Favorite Pressed'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                  ],
                ),
              ],
            ),
            // The second part of the card.
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
                      // TODO Check this color
                      // color: Theme.of(context).colorScheme.background,
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
                      // TODO Check this color
                      // color: AppColors.appSecondary2Color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
