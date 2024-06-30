import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:flutter/material.dart';

class NotificationItemWidget extends StatefulWidget {
  final TtossNotification notification;

  const NotificationItemWidget({super.key, required this.notification});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const leftPadding = 10.0;
  static const double iconWidth = 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: widget.notification.isRead
          ? context.backgroundColor
          : context.appColors.unreadColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Width(leftPadding),
              Image.asset(
                widget.notification.type.iconPath,
                width: iconWidth,
              ),
              widget.notification.type.name.text.size(12).color(context.appColors.lessImportantText).make()
            ],
          ),
          widget.notification.description.text.make().pOnly(left: leftPadding + iconWidth),
        ],
      ),
    );
  }
}
