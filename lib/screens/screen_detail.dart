import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/widget/detail_widget/btn_price_widget.dart';
import 'package:task_ui/widget/detail_widget/description_play_list_widget.dart';
import 'package:task_ui/widget/detail_widget/header_image_widget.dart';
import 'package:task_ui/widget/detail_widget/item_list_widget.dart';

class DetailWidgetPage extends StatefulWidget {
  const DetailWidgetPage({Key? key}) : super(key: key);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidgetPage> {
  // bool _showBottomSheet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text(
          "Design Thinking",
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset("assets/like.png"))
        ],
      ),
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