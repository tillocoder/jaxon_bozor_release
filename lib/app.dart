import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'core/config/lang_setting/inherted_locale.dart';
import 'core/config/lang_setting/locale_controller.dart';
import 'materialapp.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InheritedLocalNotifier(
      localController: localController,
      child: Builder(
        builder: (context) {
          return materialApp(context);
        },
      ),
    );
  }
}
