import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String avatar;

  const ChatScreen({super.key, required this.name, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage(avatar),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppTextStyle.boldBlack16),
                Text('Active 1 day ago', style: AppTextStyle.regularGrey12),
              ],
            ),
          ],
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              children: [
                _buildMessage(
                  text: 'Hello, when are you available for a meeting please?',
                  isSent: true,
                  time: 'Sent 1 day ago',
                ),
                _buildMessage(
                  text: 'Francis has been added to the discussion',
                  isSent: false,
                  time: '',
                ),
                _buildMessage(
                  text: 'Francis has just been informed of the validation of his request, do hesitate to contact him message to find a meeting place',
                  isSent: false,
                  time: '',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Row(
                children: [
            Expanded(
            child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none,
              ),
            ),
          ),
            ),
          SizedBox(width: 10.w),
          IconButton(
            icon: Icon(Icons.send, color: AppColors.orange),
            onPressed: () {},
          ),
        ],
      ),
    ),
    ],
    ),
    );
  }

  Widget _buildMessage({
    required String text,
    required bool isSent,
    required String time,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        mainAxisAlignment:
        isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSent)
            CircleAvatar(
              radius: 15.r,
              backgroundImage: AssetImage(avatar),
            ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10.w),
              margin: EdgeInsets.only(left: isSent ? 0 : 10.w, right: isSent ? 10.w : 0),
              decoration: BoxDecoration(
                color: isSent ? AppColors.orange : Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment:
                isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: AppTextStyle.regularBlack14.copyWith(
                      color: isSent ? Colors.white : Colors.black,
                    ),
                  ),
                  if (time.isNotEmpty)
                    Text(
                      time,
                      style: AppTextStyle.regularGrey10.copyWith(
                        color: isSent ? Colors.white70 : Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
          ),
          if (isSent)
            CircleAvatar(
              radius: 15.r,
              backgroundImage: AssetImage(avatar),
            ),
        ],
      ),
    );
  }
}