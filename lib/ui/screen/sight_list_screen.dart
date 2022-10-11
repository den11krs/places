import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/res/app_assets.dart';
import 'package:places/res/app_colors.dart';
import 'package:places/res/app_strings.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SightListAppBar(
        // Here the height is 128px = 16px of bottomPadding + 72px of Text + 40px of topPadding
        // In the MyCustomAppBar there is a SafeArea widget, which is 24px high in the design but can be different on different devices.
        height: 128,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < mocks.length; i++) ...[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Stack(
                  children: [
                    SightCard(sight: mocks[i]),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                        child: SvgPicture.asset(
                          AppAssets.appHeartIcon,
                          color: Colors.white,
                          height: 24,
                          width: 24,
                          semanticsLabel: 'Like',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class SightListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const SightListAppBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
              child: Text(
                AppStrings.appBarText,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 1.0,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  //In Figma 'Line height' = 36px.
                  // To achieve this I use height of 1.125 => fontSize = 32 * 1.125 gives 36
                  height: 1.125,
                  color: Color(AppColors.appSecondaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
