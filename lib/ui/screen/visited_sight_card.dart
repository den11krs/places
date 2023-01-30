import 'package:flutter/material.dart';

//import 'package:places/main.dart';
import 'package:places/domain/sight.dart';
// import 'package:places/res/app_assets.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

class VisitedSightCard extends StatelessWidget {
  final Sight sight;

  const VisitedSightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // 4.8.3 AspectRatio используйте, чтобы привести виджеты SightCard в соотношение 3/2
        AspectRatio(
      aspectRatio: 3 / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ColoredBox(
          color: const Color(AppColors.appBackgroundColor),
          child: Stack(
            children: [
              Column(
                children: [
                  // The first section with the photo of the sight
                  Flexible(
                    flex: 96,
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.network(
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
                    ),
                  ),
                  // The second section with the name and description of the sight
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 92,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // 4.8.2 Добавьте отступ между между фотографиями и описанием с помощью SizedBox
                          const SizedBox(
                            height: 16,
                          ),
                          // The name of the sight
                          // 4.8.1  Используйте ConstrainedBox, чтобы ограничить размер текста по ширине до половины размера карточки.
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
                              color: Color(AppColors.appSecondaryColor),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),

                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              AppStrings.sightVisited,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                //In Figma 'Line height' = 18px.
                                // To achieve this I use height of 1.28 => fontSize = 14 * 1.28 gives 17.92
                                height: 1.28,
                                color: Color(AppColors.appSecondary2Color),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
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
                              //In Figma 'Line height' = 18px.
                              // To achieve this I use height of 1.28 => fontSize = 14 * 1.28 gives 17.92
                              height: 1.28,
                              color: Color(AppColors.appSecondary2Color),
                            ),
                          ),
                        ],
                      ),
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
      ),
    );
  }
}
