import 'package:flutter/material.dart';
import 'package:real_state/models/recommendation.dart';
import 'package:real_state/screen/home_screen.dart';
import 'package:real_state/widgets/main/home_Banner.dart';
import 'package:real_state/widgets/main/icon_Info.dart';
import 'package:real_state/widgets/main/projects.dart';
import 'package:real_state/widgets/main/recomendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(mainsection: SingleChildScrollView(
      child: Column(
        children: [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendations(),
        ],
      ),
    ));
  }
}
