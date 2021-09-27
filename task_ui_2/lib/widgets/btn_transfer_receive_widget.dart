import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnTransferReceiveWidget extends StatelessWidget{
  final VoidCallback? onTap;
  final String label;

  const BtnTransferReceiveWidget({Key? key, this.onTap, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 50.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}