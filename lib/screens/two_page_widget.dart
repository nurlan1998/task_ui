import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/widget/detail_widget/btn_price_widget.dart';
import 'package:task_ui/widget/detail_widget/description_play_list_widget.dart';
import 'package:task_ui/widget/detail_widget/header_image_widget.dart';
import 'package:task_ui/widget/detail_widget/item_list_widget.dart';

class TwoPageWidget extends StatelessWidget{
  const TwoPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderImage(),
              BtnPlayDescriptionWidget(),
              ItemListWidget(),
              ItemListWidget(),
              ItemListWidget(),
              ItemListWidget(),
              BtnPriceWidget(),
            ],
          ),
        ),
    );
  }
}