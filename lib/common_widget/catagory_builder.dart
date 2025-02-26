import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/catagory_data.dart';
import 'package:meal_monkey/common/color_entension.dart';

class CatagoryBuilder extends StatefulWidget {
  const CatagoryBuilder({super.key});

  @override
  State<CatagoryBuilder> createState() => _CatagoryBuilderState();
}

class _CatagoryBuilderState extends State<CatagoryBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: catagory.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            child: Column(
              children: [
                Expanded(
                  child: Image(
                    image: NetworkImage(
                      catagory.elementAt(1).imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Text(
                    catagory.elementAt(index).title,
                    style: TextStyle(
                      color: ColorExtension.primaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
