import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_image_button.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          actions: [
            ImageButton(
              onTap: () {
                context.showSnackbar("검색");
              },
              imagePath: '$basePath/icon/stock_search.png',
            ),
            ImageButton(
              onTap: () {
                context.showSnackbar("캘린더");
              },
              imagePath: '$basePath/icon/stock_calendar.png',
            ),
            ImageButton(
              onTap: () {
                context.showSnackbar("설정");
              },
              imagePath: '$basePath/icon/stock_settings.png',
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabBar,
              myAccount,
              height20,
              myStocks,
            ],
          ),
        ),
      ],
    );
  }

  Widget get title => Row(
    crossAxisAlignment: CrossAxisAlignment.end, //row나 column의 진행방향과 수직으로 다른 위치 정렬은 CrossAxisAlignment 로 바꿀 수 있다.
    children: [
      '토스증권'.text.size(24).bold.make(),
      width20,
      'S&P 500'.text.size(13).bold.color(context.appColors.lessImportant).make(),
      width10,
      // '3,919.29'.text.size(13).bold.color(Colors.red).make(),
      3919.29.toComma().text.size(13).bold.color(context.appColors.plus).make(),
    ],
  ).pOnly(left: 20);
  Widget get tabBar => Placeholder();
  Widget get myAccount => Placeholder();
  Widget get myStocks => Placeholder();

}
