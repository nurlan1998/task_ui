import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget{
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 8.0),
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.cached_sharp),
          ),
        )
      ],
    );
  }
}