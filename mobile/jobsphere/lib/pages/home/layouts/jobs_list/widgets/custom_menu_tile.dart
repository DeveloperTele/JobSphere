import 'package:flutter/material.dart';

class CustomMenuTile extends StatelessWidget {

  final GestureTapCallback? click;
  final String? text;
  final bool? selected;
  final IconData? icon;


  const CustomMenuTile({
    Key? key,
    required this.click,
    required this.text,
    required this.selected,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: click,
      title: Text(text!,
        style: TextStyle(color: selected! ? Colors.white : Colors.grey, fontSize: 14),
      ),
      leading: Icon(icon,
        color:  selected! ? Colors.white : Colors.grey,
        size: 22,
      ),
    );
  }
}