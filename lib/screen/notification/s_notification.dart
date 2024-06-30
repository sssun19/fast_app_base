import 'dart:js';

import 'package:fast_app_base/screen/notification/notifications_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Material( // 테마 설정이 안 되어 있으면 화면이 깨져 보임. Material 로 감싸거나 Scaffold, 하위 body : CustomScrollView() 로 감싸면 해결 가능.
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("알림"),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => NotificationItemWidget(notification: notificationDummies[index]),
            childCount: notificationDummies.length,
          )),
        ],
      ),
    );
  }
}
