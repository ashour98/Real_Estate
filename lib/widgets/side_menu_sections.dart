import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/widgets/contact_info.dart';
import 'package:real_state/widgets/goals.dart';
import 'package:real_state/widgets/logo.dart';

class SideMenuSections extends StatelessWidget {
  const SideMenuSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(child: SingleChildScrollView(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactInfo(),
                  Divider(),
                  Goals(),
                  Divider(),
                  SizedBox(height: kDefaultPadding,),
                  TextButton(onPressed: (){}, child: FittedBox(
                    child: Row(children: [
                      SvgPicture.asset('assets/icons/download.svg'),
                      SizedBox(width: kDefaultPadding/2,),
                      Text('Download Brochure',style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color)),


                    ],),
                  )),
                  Container(
                    color: kSecondaryColor,
                    margin: EdgeInsets.only(top: kDefaultPadding*2),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/dribble.svg')),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/github.svg')),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/twitter.svg')),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}


