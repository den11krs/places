import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/main.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      //I've put here height 188 because the two halves of each SightCard has height of 96 and 92 in Figma.
      height: 188,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ColoredBox(
          //color: Colors.amber,
          color: const Color(AppColors.appBackgroundColor),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 96,
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 92,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: Color(AppColors.appSecondaryColor),
                            ),
                          ),
                          Text(
                            sight.details,
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
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
