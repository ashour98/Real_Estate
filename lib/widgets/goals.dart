import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text('Goals',style: Theme.of(context).textTheme.subtitle2,),
        ),
        BuildGoals(text: "Planning Stage"),
        BuildGoals(text: "Development"),
        BuildGoals(text: "Execution phase"),
        BuildGoals(text: "New Way to living"),

      ],
    );
  }

  Padding BuildGoals({required String text}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/check.svg'),
            SizedBox(width: kDefaultPadding/2,),
            Text('$text'),
          ],
        ),
      );
  }
}
