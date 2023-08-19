import 'package:flutter/material.dart';
import 'package:nursery/features/settings_view/presentation_settings_screen/views_settings_screen/widgets_setting_screen/settings_body/settings_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsScreenBody(),
    );
  }
}
