import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnSavingsWidget extends StatelessWidget{
  final VoidCallback? onTap;
  final String label;

  const BtnSavingsWidget({Key? key, this.onTap, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  const Icon(Icons.car_rental),
                  Column(
                    children: const [
                      Text('Super Car',style: TextStyle(fontSize: 12),),
                      Text('43,495/100,000',style: TextStyle(fontSize: 12),),
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