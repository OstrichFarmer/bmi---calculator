import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onpressed});
  final IconData icon;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: const Color(0XFF4C4F5E),
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 6,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(height: 54, width: 54),
    );
  }
}
