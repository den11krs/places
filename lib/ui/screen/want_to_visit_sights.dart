import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/mocks.dart';
import 'package:places/res/app_assets.dart';
import 'package:places/ui/screen/want_to_visit_sight_card.dart';

class WantToVisitSights extends StatelessWidget {
  const WantToVisitSights({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Stack(
              children: [
                WantToVisitSightCard(sight: mocks[5]),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          AppAssets.appCalendarIcon,
                          color: Colors.white,
                          height: 24,
                          width: 24,
                          semanticsLabel: 'Calendar',
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SvgPicture.asset(
                          AppAssets.appClose,
                          color: Colors.white,
                          height: 24,
                          width: 24,
                          semanticsLabel: 'Close',
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
    );
  }
}
