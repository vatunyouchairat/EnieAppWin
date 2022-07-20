import 'package:enie/utillity/my_constant.dart';
import 'package:enie/widgets/show_button.dart';
import 'package:enie/widgets/show_progress.dart';
import 'package:enie/widgets/show_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageRequireLogin extends StatefulWidget {
  const PageRequireLogin({Key? key}) : super(key: key);

  @override
  State<PageRequireLogin> createState() => _PageRequireLoginState();
}

class _PageRequireLoginState extends State<PageRequireLogin> {
  bool load = true;
  bool? haveData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findUserLogin();
  }

  Future<void> findUserLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? result = await preferences.getString('username');
    if (result == null) {
      haveData = false;
    } else {
      haveData = true;
    }
    load = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: load
          ? const ShowProgress()
          : haveData!
              ? newGeneral()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShowText(
                      label: 'Require Login',
                      textStyle: Myconstant().h2Style(),
                    ),
                    ShowButton(
                      label: 'LogIn',
                      pressFunc: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Myconstant.routeAuthen, (route) => false);
                      },
                    ),
                  ],
                ),
    );
  }

  Center newGeneral() {
    return Center(
      child: ShowText(
        label: 'Page Require Ligin',
        textStyle: Myconstant().h1Style(),
      ),
    );
  }
}
