import 'package:flutter/material.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white10,
                    Colors.white,
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            width: 100.0,
            height: 1.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              "OR",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 16.0
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white10,
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            width: 100.0,
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
