import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/nav.dart';

import 'vo/vo_notification.dart';

// 다이얼로그를 만드는 기본 틀. statefulwidget 이 아닌 DialogWidget , extends State 가 아닌 DialogState
class NotificationDialog extends DialogWidget {

  final List<TtossNotification> notifications;

  NotificationDialog(this.notifications, {super.key, super.animation = NavAni.Bottom, super.barrierDismissible = false});

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency, // 뒷 배경이 투명
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...widget.notifications.map((element)=>NotificationItemWidget(onTap: () {
            widget.hide();
            // Nav.pop(context);
          }, notification: element)).toList(),
      
        ],
      ),
    );
  }
}
