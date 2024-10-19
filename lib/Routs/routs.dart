import 'package:flutter/material.dart';
import 'package:grabdoc/Login/splace.dart';
import 'package:grabdoc/Login/verification.dart';
import 'package:grabdoc/Login/welcome.dart';

final Map<String, WidgetBuilder> routs = {
  'splaceScreen': (context) => const Splace(),
  'welcome': (context) => const Welcome(),
  'verification': (context) => const Verification()
};
