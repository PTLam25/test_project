import 'package:flutter/material.dart';

class PhoneInputPage extends StatelessWidget {
  const PhoneInputPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Icon(Icons.chevron_left),
          ],
        ),
      ),
    );
  }
}
