import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnSavingsWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final String imageSavings;

  const BtnSavingsWidget(
      {Key? key, this.onTap, required this.label, required this.imageSavings})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Image.asset(imageSavings),
                  Column(
                    children: [
                      Text(
                        label,
                        style: const TextStyle(fontSize: 12),
                      ),
                      // Text('43,495/100,000',style: TextStyle(fontSize: 12),),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}