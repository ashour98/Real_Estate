import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/models/projects.dart';
import 'package:real_state/responsive.dart';
import 'package:real_state/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
            desktop: buildGridView(
            itemcount: demoProjects.length,
            ChildAspectRatio: 0.75,
            crossAxissCount: 3,
            itemBuilder: (context, item) => ProjectCard(
              project: demoProjects[item],
            )),

            tablet: buildGridView(
                itemcount: demoProjects.length,
                ChildAspectRatio: 0.75,
                crossAxissCount: MediaQuery.of(context).size.width <900 ? 2: 3,
                itemBuilder: (context, item) => ProjectCard(
                  project: demoProjects[item],
                )),

            largeMobile: buildGridView(
                itemcount: demoProjects.length,
                ChildAspectRatio: 0.75,
                crossAxissCount: 2,
                itemBuilder: (context, item) => ProjectCard(
                  project: demoProjects[item],
                )),

            mobile: buildGridView(
            itemcount: demoProjects.length,
            ChildAspectRatio: 0.75,
            crossAxissCount: 1,
            itemBuilder: (context, item) => ProjectCard(
              project: demoProjects[item],
            )))

      ],
    );
  }

  GridView buildGridView(
      {required int itemcount,
      required int crossAxissCount,
      required double ChildAspectRatio,
      required IndexedWidgetBuilder itemBuilder}) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemcount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxissCount,
            crossAxisSpacing: kDefaultPadding,
            childAspectRatio: ChildAspectRatio,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itemBuilder);
  }
}

