import 'package:enie/states/page_non_login.dart';
import 'package:enie/states/page_require_login.dart';
import 'package:enie/widgets/show_text_button.dart';
import 'package:flutter/material.dart';

class DemoTestLogin extends StatelessWidget {
  const DemoTestLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShowTextButton(
          label: 'Demo PageNonLogin',
          pressFunc: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageNoneLogin(),
                ));
          },
        ),
        ShowTextButton(
          label: 'Demo PageRequireLogin',
          pressFunc: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageRequireLogin(),
                ));
          },
        ),
      ],
    );
  }
}