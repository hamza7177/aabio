import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import 'chat_screen.dart';


class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final conversations = [
      {
        'name': 'Paris Dakar',
        'message': 'Hello, can we meet from...',
        'time': '3 days ago',
        'avatar': 'assets/icons/profile.png', // Replace with actual asset path
      },
      {
        'name': 'Louis',
        'message': 'Hello, how are we doing for the...',
        'time': '6 days ago',
        'avatar': 'assets/icons/profile.png', // Replace with actual asset path
      },
      {
        'name': 'Faya',
        'message': 'I would like to know your place of...',
        'time': '10 days ago',
        'avatar': 'assets/icons/profile.png', // Replace with actual asset path
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.white,

      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        itemCount: conversations.length,
        itemBuilder: (context, index) {
          final convo = conversations[index];
          return Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xffEBEBEB)
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20.r,
                    backgroundImage: AssetImage(convo['avatar']!),
                  ),
                  title: Text(convo['name']!, style: AppTextStyle.boldBlack16),
                  subtitle: Text(convo['message']!, style: AppTextStyle.regularBlack14),
                  trailing: Text(convo['time']!, style: AppTextStyle.regularGrey12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          name: convo['name']!,
                          avatar: convo['avatar']!,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10.h),
            ],
          );
        },
      ),
    );
  }
}