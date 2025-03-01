import 'package:flutter/material.dart';

import '../common/color_entension.dart';

class ViewAllRow extends StatelessWidget {
  const ViewAllRow({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Metropolis',
          ),
        ),
        const Spacer(),
        TextButton(
          child: Text(
            'View All',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorExtension.primaryBg,
              fontFamily: 'Metropolis',
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
