import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Expanded DividerLine() {
      return Expanded(
        child: Container(
          color: Color.fromRGBO(208, 206, 220, 1.0),
          child: Divider(
            color: Colors.transparent,
            height: 1.5,
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DividerLine(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('OR', style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600))),
          DividerLine(),
        ],
      ),
    );
  }
}
