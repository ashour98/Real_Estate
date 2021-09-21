import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/models/recommendation.dart';


class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    required this.recommendation,
    Key? key,
  }) : super(key: key);
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage:
              AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: kDefaultPadding/2,),
          Text(
            recommendation.text!,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          )
        ],
      ),
    );
  }
}