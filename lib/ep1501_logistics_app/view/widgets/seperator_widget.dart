import 'package:flutter/material.dart';

class SeparatorWidget extends StatelessWidget {
  const SeparatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final dashCount = (constraints.constrainWidth() / (2 * 10.0)).floor();
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            dashCount,
            (index) => SizedBox(
              width: 10.0,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
