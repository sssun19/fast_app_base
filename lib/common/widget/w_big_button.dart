import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BigButton(this.text, {super.key, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //위젯 사이에 최대한의 공간을 넣어 거리를 둠
        children: [
          text.text.white.size(20).bold.make(),

          const Arrow(),
        ],
      ),
    );
  }
}
