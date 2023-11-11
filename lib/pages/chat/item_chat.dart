import 'package:flutter/material.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:intl/intl.dart';

class itemChat extends StatelessWidget {
  const itemChat({
    required this.isSender,
    required this.message,
    required this.time,
    super.key,
  });

  final bool isSender;
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      alignment: isSender ? Alignment.topRight : Alignment.topLeft,
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            // width: Get.width * 0.7,
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: isSender ? AppColors.blue : Color(0xff3D4648),
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      isSender ? Radius.circular(12) : Radius.circular(0),
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                  bottomRight:
                      isSender ? Radius.circular(0) : Radius.circular(12),
                )),
            child: Text(
              "${message}",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            // "${DateFormat.jm().format(DateTime.parse(time))}",
            time,
            style: TextStyle(fontSize: 13.0, color: Color(0xff4D4C4E)),
          ),
        ],
      ),
    );
  }
}
