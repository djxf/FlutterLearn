import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *
 * 定制虚线View
 *
 *
 *
 *
 *
 */


class DashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  DashedLine({
      this.axis = Axis.horizontal,
      this.dashedWidth = 10,
      this.dashedHeight = 1,
      this.count = 20,
      this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: axis,
        children: List.generate(count, (index) {
          return SizedBox(
            width: dashedWidth,
            height: dashedHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          );
        }),
    );
  }
}
