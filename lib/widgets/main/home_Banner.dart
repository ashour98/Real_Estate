import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build a great future \n for all of us',
                  style: Responsive.isDesktop(context) ? Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold):
                  Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                ),
                SizedBox(height: kDefaultPadding,),
                ElevatedButton(onPressed: (){},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*2,vertical: kDefaultPadding),
                      backgroundColor: kPrimaryColor
                    ),
                    child: Text('CONTACT US',style: TextStyle(color: kDarkColor),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
