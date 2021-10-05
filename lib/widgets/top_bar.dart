import 'package:cool_web/helpers/responsive.dart';
import 'package:flutter/material.dart';

AppBar topBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      leading: Responsive.isSmall(context)
          ? IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          : Container(),
      title: Text('Hello',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
