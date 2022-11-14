import 'package:flutter/material.dart';

class JdTabMenu extends StatelessWidget {
  const JdTabMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(27.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blueGrey,
        elevation: 9,
        child: Row(
          children: [
            Expanded(child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text('Job Description')
              ),
            )),
            VerticalDivider(width: 1),
            Expanded(child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text('Company')
              ),
            )),
            VerticalDivider(width: 1),
            Expanded(child: Center(
              child: TextButton(
                onPressed: () {},
                child: Text('Web Page')
              ),
            )),
          ],
        ),
      ),
    );
  }
}
