import 'package:corrier/modules/auth/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_style.dart';
import '../../../auth/widgets/app_button.dart';

class IdentityDocumentsScreen extends StatelessWidget {
  const IdentityDocumentsScreen({super.key});

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
        centerTitle: true,

        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Bank Information (rib)',
                style: AppTextStyle.mediumBlack16.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
              SizedBox(height: 10.h,),
              Text(
                'Parts Provided',
                style: AppTextStyle.mediumBlack16,
              ),
              SizedBox(height: 20.h),
              ListTile(
                title: Text('ID Card', style: AppTextStyle.regularBlack14),
                trailing: Text('No', style: AppTextStyle.regularBlack14),
              ),
              Divider(),
              ListTile(
                title: Text('Passport', style: AppTextStyle.regularBlack14),
                trailing: Text('No', style: AppTextStyle.regularBlack14),
              ),
              SizedBox(height: 20.h),
              Text(
                'Add ID',
                style: AppTextStyle.mediumBlack16,
              ),
              SizedBox(height: 10.h),
              Text(
                'Mandatory to access our services for booking or selling kilos.',
                style: AppTextStyle.regularBlack12.copyWith(color: AppColors.greyShade),
              ),
              SizedBox(height: 20.h),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select ID',
                  suffixIcon: Icon(Icons.arrow_drop_down, color: AppColors.orange),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                items: <String>['ID Card', 'Passport'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: AppTextStyle.regularBlack14),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Download',
                  hintText: 'jpg, pdf',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                  minimumSize: Size(double.infinity, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.black),
                    SizedBox(width: 10.w),
                    Text('Take a selfie', style: AppTextStyle.regularBlack14),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '*Photo required: take a face photo of your face',
                style: AppTextStyle.regularBlack12.copyWith(color: AppColors.greyShade),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical:2.h),
          child: SmallButton(
            text: 'Save',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}