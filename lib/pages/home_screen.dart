import 'package:cool_web/helpers/responsive.dart';
import 'package:cool_web/widgets/large_screen.dart';
import 'package:cool_web/widgets/medium_screen.dart';
import 'package:cool_web/widgets/small_screen.dart';
import 'package:cool_web/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: topBar(context, scaffoldKey),
      drawer: Drawer(),
      body: Responsive(
        small: SmallScreen(),
        medium: MediumScreen(),
        large: LargeScreen(),
      ),
    );
  }
}
