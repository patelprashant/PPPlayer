import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/custom_button.dart';
import 'package:ppplayer/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 24, right: 30, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text("lbl_sign_in".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium28),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "lbl_email".tr,
                          margin: getMargin(top: 28),
                          textInputType: TextInputType.emailAddress),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 23),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          isObscureText: true),
                      CustomButton(
                          height: getVerticalSize(51),
                          text: "lbl_sign_in".tr,
                          margin: getMargin(top: 23),
                          shape: ButtonShape.RoundedBorder5,
                          padding: ButtonPadding.PaddingAll14),
                      Padding(
                          padding: getPadding(top: 35),
                          child: Text("msg_forgot_your_login".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14)),
                      Container(
                          width: getHorizontalSize(114),
                          margin: getMargin(top: 177),
                          padding:
                              getPadding(left: 9, top: 2, right: 9, bottom: 2),
                          decoration: AppDecoration.txtFillWhiteA70071.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.txtCircleBorder13),
                          child: Text("lbl_create_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14))
                    ]))));
  }
}
