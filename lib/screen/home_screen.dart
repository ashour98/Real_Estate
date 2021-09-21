import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/responsive.dart';
import 'package:real_state/widgets/side_menu_sections.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.mainsection}) : super(key: key);
  final Widget mainsection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) ? null
      : AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context)=> IconButton( onPressed: (){
            Scaffold.of(context).openDrawer();
          },icon: Icon(Icons.menu),),
        )
      ),
      drawer: SideMenuSections(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              children: [
                if(Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                    child: SideMenuSections()),
                SizedBox(height: kDefaultPadding),
                Expanded(
                  flex: 7,
                    child: mainsection
                ),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
