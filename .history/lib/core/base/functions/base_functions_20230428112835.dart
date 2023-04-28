import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/app/color_constants.dart';

@immutable
class BaseFunctions {
  const BaseFunctions._();

  Widget platformIndicator() {
    return Center(
      child: Platform.isIOS
          ? const CupertinoActivityIndicator(color: ColorConstants.teal)
          : const CircularProgressIndicator(color: ColorConstants.teal),
    );
  }

  Widget errorText(String errorMessage) {
    return Center(
      child: Text(errorMessage),
    );
  }

  closePopup(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
