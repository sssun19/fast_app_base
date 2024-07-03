import 'dart:js';

import 'package:fast_app_base/screen/notification/notifications_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/constant/app_colors.dart';
import 'd_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 테마 설정이 안 되어 있으면 화면이 깨져 보임. Material 로 감싸거나 Scaffold, 하위 body : CustomScrollView() 로 감싸면 해결 가능.
      // backgroundColor: AppColors.veryDarkGrey, // custom_theme 에 scaffoldBackgroundColor 로 지정해 놓으면 됨.
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("알림"),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => NotificationItemWidget(
              notification: notificationDummies[index],
              onTap: () {
                NotificationDialog([notificationDummies[0], notificationDummies[1]]).show();

              },
            ),
            childCount: notificationDummies.length,
          )),
        ],
      ),
    );
  }
}
