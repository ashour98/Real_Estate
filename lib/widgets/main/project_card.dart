import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/models/projects.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            style: Theme.of(context).textTheme.subtitle2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
              child: Text(
                project.description!,
                style: TextStyle(height: 1.5),
              )),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "More Info >",
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
