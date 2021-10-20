import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPress;
  final Color borderColor;

  const StyledButton(
      {Key? key,
      required this.label,
      this.icon,
        this.onPress, required this.borderColor,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: OutlinedButton(
        onPressed: onPress,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  border: Border.all(color: borderColor, width: 2)),
              child: Icon(icon),
            ),
            Text(
              label,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
