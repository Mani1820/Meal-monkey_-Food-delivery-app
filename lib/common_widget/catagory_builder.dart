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
      scrollDirection: Axis.horizontal,
      itemCount: catagory.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SizedBox(
            height: 50,
            width: 85,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Expanded(
                    child: Image(
                      image: NetworkImage(
                        catagory.elementAt(index).imageUrl,
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      width: 85,
                      height: 35,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    catagory.elementAt(index).title,
                    style: TextStyle(
                      color: ColorExtension.primaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
