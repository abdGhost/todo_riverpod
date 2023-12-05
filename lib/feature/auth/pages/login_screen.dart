import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/custom_outline_button.dart';
import 'package:todo_app_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_app_riverpod/common/widgets/reuseable_text.dart';

import '../../../common/widgets/custom_textfield.dart';
import 'otp_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController phone = TextEditingController();
  Country country = Country(
    phoneCode: '1',
    countryCode: 'US',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'USA',
    example: 'USA',
    displayName: 'United State',
    displayNameNoCountryCode: 'US',
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Image.asset('assets/images/todo.png'),
              ),
              const HeightSpacer(hieght: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: ReuseableText(
                  text: 'Please enter your phone number',
                  style: appStyle(16, AppConst.kLight, FontWeight.w400),
                ),
              ),
              const HeightSpacer(hieght: 20),
              Center(
                child: CustomTextfield(
                  keyboardType: TextInputType.number,
                  hintText: 'Enter phone number',
                  hintStyle: appStyle(16, AppConst.kBKDark, FontWeight.w500),
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                                backgroundColor: AppConst.kLight,
                                bottomSheetHeight: AppConst.kHeight * 0.6,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(AppConst.kRadius),
                                  topRight: Radius.circular(AppConst.kRadius),
                                )),
                            onSelect: (code) {
                              setState(() {});
                            });
                      },
                      child: ReuseableText(
                          text: '${country.flagEmoji} + ${country.phoneCode}',
                          style: appStyle(
                            18,
                            AppConst.kBKDark,
                            FontWeight.bold,
                          )),
                    ),
                  ),
                  controller: phone,
                ),
              ),
              const HeightSpacer(hieght: 20),
              CustomOutlineButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                },
                height: AppConst.kHeight * 0.07,
                width: AppConst.kWidth * 0.9,
                color: AppConst.kLight,
                text: 'Send Code',
              )
            ],
          ),
        ),
      ),
    );
  }
}
