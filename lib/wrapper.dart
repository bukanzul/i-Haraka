import 'package:flutter/material.dart';
import 'package:iharaka/models/MyUser.dart';
import 'package:iharaka/screen/authenticate/startPage.dart';
import 'package:iharaka/screen/homepage/home_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);

    // Return either Home or Sign in
    if (user == null) {
      return StartPage();
    } else
      {
      return HomePage();
    }
  }
}
